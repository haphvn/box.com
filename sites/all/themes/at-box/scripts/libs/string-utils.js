/**
 * @author flash-xitrum
 */
 
 /**
  * truncate text of an element which is too long exceeding the wrapper. 
  * @param {} el : element will be truncated it 
  * @param {} maxheight: max height, if missed it will base on the height of the el's parent
  */
 function truncateText(el, maxheight) {
    var len = 100;
    var trunc = $(el).html();
    if (!el || !$(el).parent()) return;
    maxheight = maxheight ? maxheight : $(el).parent().height(); 
    while ($(el).height() > maxheight) {
        if (el) {
            len = trunc.length - 1;                    
            trunc = trunc.substring(0, len);
            trunc = trunc.replace(/\w+$/, '');
            $(el).html(trunc + '...');
        }
    }
}

/**
* Remove all tags in html including open tag, close tag
* html: html source will be trimmed
* tags: list of tag separated by commas
*/
function trimTag(html, tags, replace) {
    var pattern = [];
    replace = replace ? replace : "";
    tags = tags.replace(",","|");
    pattern.push(new RegExp("<("+ tags + ")(.|\n:\r)*?>","gm"));
    pattern.push(new RegExp("</(" + tags + ")>","gm"));
        
    $(pattern).each(function(i,el){
        html = html.replace(el, replace);
    });
    return html;
}