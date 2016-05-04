/**
 * @file
 * Provides a component that previews the page in various device dimensions.
 */

(function ($, Backbone, Drupal) {

  "use strict";

/**
 * Attaches behaviors to the navbar tab and preview containers.
 */
Drupal.behaviors.responsivePreview = {
  attach: function (context) {
    var defaults = this.defaults;
    // once() returns a jQuery set. It will be empty if no unprocessed
    // elements are found. window and window.parent are equivalent unless the
    // Drupal page is itself wrapped in an iframe.
    var $body = $(window.parent.document.body).once('responsive-preview');

    if ($body.length) {
      var options = $.extend(defaults, Drupal.settings.responsivePreview || {});
      // If this window is itself in an iframe it must be marked as processed.
      // Its parent window will have been processed above.
      // When attach() is called again for the preview iframe, it will check
      // its parent window and find it has been processed. In most cases, the
      // following code will have no effect.
      $(window.document.body).once('responsive-preview');

      var envModel = new Drupal.responsivePreview.models.EnvironmentModel({
        dir: document.getElementsByTagName('html')[0].getAttribute('dir')
      });
      var tabModel = new Drupal.responsivePreview.models.TabStateModel();
      var previewModel = new Drupal.responsivePreview.models.PreviewStateModel();

      // The navbar tab view.
      var $tab = $(context).find('#responsive-preview-navbar-tab');
      if ($tab.length > 0) {
        var tabView = new Drupal.responsivePreview.views.TabView({
          el: $tab.get(),
          model: previewModel,
          tabModel: tabModel,
          envModel: envModel,
          // Gutter size around preview frame.
          gutter: options.gutter,
          // Preview device frame width.
          bleed: options.bleed
        });
      }
      // The control block view.
      var $block = $(context).find('#block-responsive-preview-controls');
      if ($block.length > 0) {
        var blockView = new Drupal.responsivePreview.views.BlockView({
          el: $block.get(),
          model: previewModel,
          envModel: envModel,
          // Gutter size around preview frame.
          gutter: options.gutter,
          // Preview device frame width.
          bleed: options.bleed
        });
      }
      // The preview container view.
      var previewView = new Drupal.responsivePreview.views.PreviewView({
        el: Drupal.theme('responsivePreviewContainer'),
        model: previewModel,
        envModel: envModel,
        // Gutter size around preview frame.
        gutter: options.gutter,
        // Preview device frame width.
        bleed: options.bleed,
        strings: options.strings
      });

      var setViewportWidth = function() {
        envModel.set('viewportWidth', document.documentElement.clientWidth);
      };

      $(window)
        // Update the viewport width whenever it is resized, but max 4 times/s.
        .bind('resize.responsivePreview', Drupal.debounce(setViewportWidth, 250));

      // Allow other scripts to respond to responsive preview mode changes.
      tabModel.bind('change:isActive', function (model, isActive) {
        $(document).trigger((isActive) ? 'drupalResponsivePreviewStarted' : 'drupalResponsivePreviewStopped');
      });

      // Initialization: set the current viewport width.
      setViewportWidth();
    }
    // The main window is equivalent to window.parent and window.self. Inside,
    // an iframe, these objects are not equivalent. If the parent window is
    // itself in an iframe, check that the parent window has been processed.
    // If it has been, this invocation of attach() is being called on the
    // preview iframe, not its parent.
    if ((window.parent !== window.self) && !$body.length) {
      var $frameBody = $(window.self.document.body).once('responsive-preview');
      if ($frameBody.length > 0) {
        $frameBody.get(0).className += ' responsive-preview-frame';
      }
    }
  },
  defaults: {
    gutter: 60,
    // The width of the device border around the iframe. This value is critical
    // to determine the size and placement of the preview iframe container,
    // therefore it must be defined here instead of in the CSS file.
    bleed: 30,
    strings: {
      close: Drupal.t('close'),
      orientation: Drupal.t('Change orientation'),
      portrait: Drupal.t('portrait'),
      landscape: Drupal.t('landscape')
    }
  }
};

Drupal.responsivePreview = Drupal.responsivePreview || {models: {}, views: {}};

/**
 * Backbone Model for the environment in which the Responsive Preview operates.
 */
Drupal.responsivePreview.models.EnvironmentModel = Backbone.Model.extend({
  defaults: {
    // The viewport width, within which the preview will have to fit.
    viewportWidth: null,
    // Text direction of the document, affects some positioning.
    dir: 'ltr'
  }
});

/**
 * Backbone Model for the Responsive Preview navbar tab state.
 */
Drupal.responsivePreview.models.TabStateModel = Backbone.Model.extend({
  defaults: {
    // The state of navbar list of available device previews.
    isDeviceListOpen: false
  }
});

/**
 * Backbone Model for the Responsive Preview preview state.
 */
Drupal.responsivePreview.models.PreviewStateModel = Backbone.Model.extend({
  defaults: {
    // The state of the preview.
    isActive: false,
    // Indicates whether the preview iframe has been built.
    isBuilt: false,
    // Indicates whether the device is portrait (false) or landscape (true).
    isRotated: false,
    // The number of devices that fit the current viewport (i.e. previewable).
    fittingDeviceCount: 0,
    // Currently selected device link.
    activeDevice: null,
    // Dimensions of the currently selected device to preview.
    dimensions: {
      // The width of the device to preview.
      width: null,
      // The height of the device to preview.
      height: null,
      // The dots per pixel of the device to preview.
      dppx: null
    }
  }
});

/**
 * Handles responsive preview navbar tab interactions.
 */
Drupal.responsivePreview.views.TabView = Backbone.View.extend({
  events: {
    'click': 'toggleDeviceList',
    'mouseleave': 'toggleDeviceList',
  },

  /**
   * Implements Backbone.View.prototype.initialize().
   */
  initialize: function () {
    this.gutter = this.options.gutter;
    this.bleed = this.options.bleed;
    this.tabModel = this.options.tabModel;
    this.envModel = this.options.envModel;

    // The selectDevice function is declared outside of the view because it is
    // shared among views. It must be bound to this for the correct context
    // to obtain.
    this.$el.delegate('.device', 'click.responsivePreview', $.proxy(selectDevice, this));

    this.model.bind('change:isActive change:dimensions change:activeDevice change:fittingDeviceCount', this.render, this);

    this.tabModel.bind('change:isDeviceListOpen', this.render, this);

    this.envModel.bind('change:viewportWidth', updateDeviceList, this);
    this.envModel.bind('change:viewportWidth', this.correctDeviceListEdgeCollision, this);
  },

  /**
   * Implements Backbone.View.prototype.render().
   */
  render: function () {
    var $deviceLink = $(this.model.get('activeDevice'));
    var name = $deviceLink.data('responsive-preview-name');
    var isActive = this.model.get('isActive');
    var isDeviceListOpen = this.tabModel.get('isDeviceListOpen');
    this.$el
      // Render the visibility of the navbar tab.
      .toggle(this.model.get('fittingDeviceCount') > 0)
      // Toggle the display of the device list.
      .toggleClass('open', isDeviceListOpen);

    // Render the state of the navbar tab button.
    this.$el
      .find('> button')
      .toggleClass('active', isActive)
      .attr('aria-pressed', isActive);

    // Clean the active class from the device list.
    this.$el
      .find('.device.active')
      .removeClass('active');

    this.$el
      .find('[data-responsive-preview-name="' + name + '"]')
      .toggleClass('active', isActive);
    // When the preview is active, a class on the body is necessary to impose
    // styling to aid in the display of the preview element.
    $('body').toggleClass('responsive-preview-active', isActive);
    // The list of devices might render outside the window.
    if (isDeviceListOpen) {
      this.correctDeviceListEdgeCollision();
    }
    return this;
  },

  /**
   * Toggles the list of devices available to preview from the navbar tab.
   *
   * @param Object event
   *   jQuery Event object.
   */
  toggleDeviceList: function (event) {
    // Force the options list closed on mouseleave.
    if (event.type === 'mouseleave') {
      this.tabModel.set('isDeviceListOpen', false);
    }
    else {
      this.tabModel.set('isDeviceListOpen', !this.model.get('isDeviceListOpen'));
    }

    event.preventDefault();
    event.stopPropagation();
  },

  /**
   * Model change handler; corrects possible device list window edge collision.
   */
  correctDeviceListEdgeCollision: function () {
    // The position of the dropdown depends on the language direction.
    var dir = this.envModel.get('dir');
    var edge = (dir === 'rtl') ? 'left' : 'right';
    this.$el
      .find('.item-list')
      .position({
        'my': edge +' top',
        'at': edge + ' bottom',
        'of': this.$el,
        'collision': 'flip fit'
      });
  }
});

/**
 * Handles responsive preview control block interactions.
 */
Drupal.responsivePreview.views.BlockView = Backbone.View.extend({

  /**
   * Implements Backbone.View.prototype.initialize().
   */
  initialize: function () {
    this.gutter = this.options.gutter;
    this.bleed = this.options.bleed;
    this.envModel = this.options.envModel;

    // The selectDevice function is declared outside of the view because it is
    // shared among views. It must be bound to this for the correct context
    // to obtain.
    this.$el.delegate('.device', 'click.responsivePreview', $.proxy(selectDevice, this));

    this.model.bind('change:isActive change:dimensions change:activeDevice change:fittingDeviceCount', this.render, this);

    this.envModel.bind('change:viewportWidth', updateDeviceList, this);
  },

  /**
   * Implements Backbone.View.prototype.render().
   */
  render: function () {
    var $deviceLink = $(this.model.get('activeDevice'));
    var name = $deviceLink.data('responsive-preview-name');
    var isActive = this.model.get('isActive');
    this.$el
      // Render the visibility of the navbar block.
      .toggle(this.model.get('fittingDeviceCount') > 0)
      .find('.device.active')
      .removeClass('active');

    this.$el
      .find('[data-responsive-preview-name="' + name + '"]')
      .addClass('active');
    // When the preview is active, a class on the body is necessary to impose
    // styling to aid in the display of the preview element.
    $('body').toggleClass('responsive-preview-active', isActive);
    return this;
  }
});

/**
 * Functions that are common to both the TabView and BlockView.
 */

/**
 * Model change handler; hides devices that don't fit the current viewport.
 */
function updateDeviceList () {
  var gutter = this.gutter;
  var bleed = this.bleed;
  var viewportWidth = this.envModel.get('viewportWidth');
  var $devices = this.$el.find('.device');

  // Remove devices whose previews won't fit the current viewport.
  $devices.each(function (index, element) {
    var $this = $(this);
    var width = parseInt($this.data('responsive-preview-width'), 10);
    var dppx = parseFloat($this.data('responsive-preview-dppx'), 10);
    var previewWidth = width / dppx;
    var fits = ((previewWidth + (gutter * 2) + (bleed * 2)) <= viewportWidth);
    $this.parent('li').toggleClass('element-hidden', !fits);
  });
  // Set the number of devices that fit the current viewport.
  this.model.set('fittingDeviceCount', $devices.parent('li').not('.element-hidden').length);
}

/**
 * Updates the model to reflect the properties of the chosen device.
 *
 * @param Object event
 *   A jQuery event object.
 */
function selectDevice (event) {
  var $link = $(event.target);
  // Update the device dimensions.
  this.model.set({
    'activeDevice': $link.get(0),
    'dimensions': {
      'width': parseInt($link.data('responsive-preview-width'), 10),
      'height': parseInt($link.data('responsive-preview-height'), 10),
      'dppx': parseFloat($link.data('responsive-preview-dppx'), 10)
    }
  });
  // Toggle the preview on.
  this.model.set('isActive', true);

  event.preventDefault();
}

/**
 * Handles the responsive preview element interactions.
 */
Drupal.responsivePreview.views.PreviewView = Backbone.View.extend({

  events: {
    'click #responsive-preview-close': 'onClose',
    'click #responsive-preview-orientation': 'onRotate'
  },

  /**
   * Implements Backbone.View.prototype.initialize().
   */
  initialize: function () {
    this.gutter = this.options.gutter;
    this.bleed = this.options.bleed;
    this.strings = this.options.strings;
    this.tabModel = this.options.tabModel;
    this.envModel = this.options.envModel;

    this.model.bind('change:isActive change:isRotated change:dimensions change:activeDevice', this.render, this);

    // Recalculate the size of the preview container when the window resizes.
    this.envModel.bind('change:viewportWidth', this.render, this);
  },

  /**
   * Implements Backbone.View.prototype.render().
   */
  render: function () {
    var isActive = this.model.get('isActive');

    // Build the preview if it doesn't exist.
    if (isActive && !this.model.get('isBuilt')) {
      this._build();
    }

    // Early-return if inactive.
    if (isActive) {
      // Refresh the preview.
      this._refresh();
    }

    // Render the state of the preview.
    var that = this;
    // Wrap the call in a setTimeout so that it invokes in the next compute
    // cycle, causing the CSS animations to render in the first pass.
    window.setTimeout(function () {
      that.$el.toggleClass('active', isActive);
    }, 0);

    return this;
  },

  /**
   * Closes the preview.
   *
   * @param Object event
   *   A jQuery event object.
   */
  onClose: function (event) {
    this.model.set('isActive', false);
  },

  /**
   * Responds to rotation button presses.
   *
   * @param Object event
   *   A jQuery event object.
   */
  onRotate: function (event) {
    this.model.set('isRotated', !this.model.get('isRotated'));
  },

  /**
   * Builds the preview iframe.
   */
  _build: function () {
    var $frameContainer = $(Drupal.theme('responsivePreviewFrameContainer'))
      .find('#responsive-preview-close span')
      .text(this.strings.close)
      .end()
      .find('#responsive-preview-orientation span')
      .text(this.strings.orientation)
      .end()
      // The padding around the frame must be known in order to position it
      // correctly, so the style property is defined in JavaScript rather than
      // CSS.
      .css('padding', this.bleed);
    // Attach the iframe that will hold the preview.
    var $frame = $(Drupal.theme('responsivePreviewFrame'))
      .attr({
        'data-loading': true,
        src: Drupal.encodePath(location.pathname),
        width: '100%',
        height: '100%'
      })
      // Load the current page URI into the preview iframe.
      .bind('load.responsivePreview', $.proxy(this._refresh, this))
      // Add the frame to the preview container.
      .appendTo($frameContainer);
    // Adjust the placement of the preview container and insert it into the DOM.
    this.$el
      .css({ top: this._getDisplacement('top') })
      // Displace the top of the container.
      .attr('data-offset-top', this._getDisplacement('top'))
      // Apend the frame container.
      .append($frameContainer)
      // Append the container to the body to initialize the iframe document.
      .appendTo('body');
    // Mark the preview element processed.
    this.model.set('isBuilt', true);
  },

  /**
   * Refreshes the preview based on the current state (device & viewport width).
   */
  _refresh: function () {
    var isRotated = this.model.get('isRotated');
    var $deviceLink = $(this.model.get('activeDevice'));
    var $container = this.$el.find('#responsive-preview-frame-container');
    var $frame = $container.find('> iframe');

    // Get the static state.
    var edge = (this.envModel.get('dir') === 'rtl') ? 'right' : 'left';
    var minGutter = this.gutter;

    // Get current (dynamic) state.
    var dimensions = this.model.get('dimensions');
    var isRotated = this.model.get('isRotated');
    var viewportWidth = this.envModel.get('viewportWidth');

    // Calculate preview width & height. If the preview is rotated, swap width
    // and height.
    var displayWidth = dimensions[(isRotated) ? 'height' : 'width'];
    var displayHeight = dimensions[(isRotated) ? 'width' : 'height'];
    var width = displayWidth / dimensions.dppx;
    var height = displayHeight / dimensions.dppx;

    // Get the container padding and border width for the left and right.
    var bleed = this.bleed;
    var spread = width + (bleed * 2);

    // Calculate gutter.
    var gutterPercent = (1 - (spread / viewportWidth)) / 2;
    var gutter = gutterPercent * viewportWidth;
    gutter = (gutter < minGutter) ? minGutter : gutter;

    // The preview width plus gutters must fit within the viewport width.
    width = (viewportWidth - (gutter * 2) < spread) ? viewportWidth - (gutter * 2) - (bleed * 2) : width;

    // Updated the state of the rotated icon.
    this.$el.find('.control.orientation').toggleClass('rotated', isRotated);

    // Resize & reposition the iframe.
    var position = {};
    position[edge] = gutter; // Depends on text direction.
    $frame
      .css({
        width: width,
        height: height
      });
    $container
      .css(position);

    // Scale if not responsive.
    this._scaleIfNotResponsive();

    // Update the device label.
    $container.find('.device-label').text(Drupal.t('@label (@widthpx by @heightpx, @dpidppx, @orientation)', {
      '@label': $deviceLink.text(),
      '@width': Math.ceil(displayWidth),
      '@height': Math.ceil(displayHeight),
      '@dpi': dimensions.dppx,
      '@orientation': (isRotated) ? this.strings.landscape : this.strings.portrait
    }));
  },

  /**
   * Applies scaling in order to better approximate content display on a device.
   */
  _scaleIfNotResponsive: function () {
    var scalingCSS = this._calculateScalingCSS();
    if (scalingCSS === false) {
      return;
    }

    // Step 0: find DOM nodes we'll need to modify.
    var $frame = this.$el.find('#responsive-preview-frame');
    var $html = $($frame[0].contentDocument || $frame[0].contentWindow.document).find('html');

    // Step 1: When scaling (as we're about to do), the background (color and
    // image) doesn't scale along. Fortunately, we can fix things in case of
    // background color.
    // @todo: figure out a work-around for background images, or somehow
    // document this explicitly.
    function isTransparent (color) {
      // TRICKY: edge case for Firefox' "transparent" here; this is a
      // browser bug: https://bugzilla.mozilla.org/show_bug.cgi?id=635724
      return (color === 'rgba(0, 0, 0, 0)' || color === 'transparent');
    }
    var htmlBgColor = $html.css('background-color');
    var bodyBgColor = $html.find('body').css('background-color');
    if (!isTransparent(htmlBgColor) || !isTransparent(bodyBgColor)) {
      var bgColor = isTransparent(htmlBgColor) ? bodyBgColor : htmlBgColor;
      $frame.css('background-color', bgColor);
    }

    // Step 2: apply scaling.
    $html.css(scalingCSS);
  },

  /**
   * Calculates scaling based on device dimensions and <meta name="viewport" />.
   *
   * Websites that don't indicate via <meta name="viewport" /> that their width
   * is identical to the device width will be rendered at a larger size: at the
   * layout viewport's default width. This width exceeds the visual viewport on
   * the device, and causes it to scale it down.
   *
   * This function checks whether the underlying web page is responsive, and if
   * it's not, then it will calculate a CSS scaling transformation, to closely
   * approximate how an actual mobile device would render the web page.
   *
   * We assume all mobile devices' layout viewport's default width is 980px. It
   * is the value used on all iOS and Android >=4.0 devices.
   *
   * Related reading:
   *  - http://www.quirksmode.org/mobile/viewports.html
   *  - http://www.quirksmode.org/mobile/viewports2.html
   *  - https://developer.apple.com/library/safari/#documentation/AppleApplications/Reference/SafariWebContent/UsingtheViewport/UsingtheViewport.html
   *  - http://tripleodeon.com/2011/12/first-understand-your-screen/
   *  - http://tripleodeon.com/wp-content/uploads/2011/12/table.html?r=android40window.innerw&c=980
   */
  _calculateScalingCSS: function () {
    var isRotated = this.model.get('isRotated');
    var settings = this._parseViewportMetaTag();
    var defaultLayoutWidth = 980, initialScale = 1;
    var layoutViewportWidth, layoutViewportHeight;
    var visualViewPortWidth; // The visual viewport width === the preview width.

    if (settings.width) {
      if (settings.width === 'device-width') {
        // Don't scale if the page is marked to be as wide as the device.
        return false;
      }
      else {
        layoutViewportWidth = parseInt(settings.width, 10);
      }
    }
    else {
      layoutViewportWidth = defaultLayoutWidth;
    }

    if (settings.height && settings.height !== 'device-height') {
      layoutViewportHeight = parseInt(settings.height, 10);
    }

    if (settings['initial-scale']) {
      initialScale = parseFloat(settings['initial-scale'], 10);
      if (initialScale < 1) {
        layoutViewportWidth = defaultLayoutWidth;
      }
    }

    // Calculate the scale, prevent excesses (ensure the (0.25, 1) range).
    var dimensions = this.model.get('dimensions');
    // If the preview is rotated, width and height are swapped.
    visualViewPortWidth = dimensions[(isRotated) ? 'height' : 'width'] / dimensions.dppx;
    var scale = initialScale * (100 / layoutViewportWidth) * (visualViewPortWidth / 100);
    scale = Math.min(scale, 1);
    scale = Math.max(scale, 0.25);

    var transform = "scale(" + scale + ")";
    var origin = "0 0";
    return {
        'min-width': layoutViewportWidth + 'px',
        'min-height': layoutViewportHeight + 'px',
        '-webkit-transform': transform,
            '-ms-transform': transform,
                'transform': transform,
        '-webkit-transform-origin': origin,
            '-ms-transform-origin': origin,
                'transform-origin': origin
    };
  },

  /**
   * Parses <meta name="viewport" /> tag's "content" attribute, if any.
   *
   * Parses something like this:
   *   <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=5, minimum-scale=1, user-scalable=yes">
   * into this:
   *   {
   *     width: 'device-width',
   *     initial-scale: '1',
   *     maximum-scale: '5',
   *     minimum-scale: '1',
   *     user-scalable: 'yes'
   *   }
   *
   * @return Object
   *   Parsed viewport settings, or {}.
   */
  _parseViewportMetaTag: function () {
    var settings = {};
    var $viewportMeta = $(document).find('meta[name=viewport][content]');
    if ($viewportMeta.length > 0) {
      $viewportMeta
        .attr('content')
        // Reduce multiple parts of whitespace to a single space.
        .replace(/\s+/g, '')
        // Split on comma (which separates the different settings).
        .split(',')
        .map(function (setting) {
          setting = setting.split('=');
          settings[setting[0]] = setting[1];
        });
    }
    return settings;
  },

  /**
   * Gets the total displacement of given region.
   *
   * @param String region
   *   Region name. Either "top" or "bottom".
   *
   * @return Number
   *   The total displacement of given region in pixels.
   */
  _getDisplacement: function (region) {
    var displacement = 0;
    var lastDisplaced = $('[data-offset-' + region + ']');
    if (lastDisplaced.length) {
      displacement = parseInt(lastDisplaced.attr('data-offset-' + region), 10);
    }
    return displacement;
  }
});

/**
 * Registers theme templates with Drupal.theme().
 */
$.extend(Drupal.theme, {
  /**
   * Theme function for the preview container element.
   *
   * @return
   *   The corresponding HTML.
   */
  responsivePreviewContainer: function () {
    return '<div id="responsive-preview" class="responsive-preview"><div class="modal-background"></div></div>';
  },

  /**
   * Theme function for the close button for the preview container.
   *
   * @return
   *   The corresponding HTML.
   */
  responsivePreviewFrameContainer: function () {
    return '<div id="responsive-preview-frame-container" class="frame-container">'
      + '<label id="responsive-preview-frame-label" class="device-label"></label>'
      + '<button id="responsive-preview-close" role="button" class="icon icon-close control close" aria-pressed="false"><span class="element-invisible"></span></button>'
      + '<button id="responsive-preview-orientation" role="button" class="icon icon-orientation control orientation" aria-pressed="false"><span class="element-invisible"></span></button>'
      + '</div>';
  },

  /**
   * Theme function for a responsive preview iframe element.
   *
   * @return
   *   The corresponding HTML.
   */
  responsivePreviewFrame: function (url) {
    return '<iframe id="responsive-preview-frame" frameborder="0" scrolling="auto" allowtransparency="true"></iframe>';
  }
});

}(jQuery, Backbone, Drupal));
