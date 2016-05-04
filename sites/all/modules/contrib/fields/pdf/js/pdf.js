(function ($) {
  Drupal.behaviors.pdf = {
    renderPages: function(target, file) {
      PDFJS.getDocument(file).then(function(pdf) {
        for (var i=1; i<=pdf.numPages; i++) {
          var canvas = $('<canvas/>', {'id': 'page'+i});
          target.append($('<div/>', {'class': 'page', 'id': 'pageContainer'+i}));
          $('#pageContainer'+i).append(canvas);
          pdf.getPage(i).then(function(page) {
            var scale = 2;
            var viewport = page.getViewport(scale);
            var item1 = $('canvas');
            var canvas = target.find('canvas:eq('+ page.pageInfo.pageIndex +')').get(0);
            var context = canvas.getContext('2d');
            canvas.height = viewport.height;
            canvas.width = viewport.width;

            var renderContext = {
              canvasContext: context,
              viewport: viewport
            };
            page.render(renderContext);//, textLayer);
          });
        }
      });
    },

    attach: function(context, settings) {
      $('.pdf').each(function(){
        var file = $(this).attr('file');
        Drupal.behaviors.pdf.renderPages($(this), file);
      });
    }
  };
})(jQuery);
