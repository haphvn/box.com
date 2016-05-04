/**
 * Created with JetBrains PhpStorm.
 * User: Ha Pham
 * Date: 6/19/13
 * Time: 4:58 PM
 * To change this template use File | Settings | File Templates.
 */
jQuery(document).ready(function($) {
    var contents = $('.tab-content');
    var template = $('#template');
    $('.tab-container').customtabs({
        startTab : $('.tab-controls > a:first').attr('tab-id'),
        onActive: function(currentTab){
            loadDataContent(currentTab);
        }
    });


    function loadDataContent(tab){
        var $source = $(".tab-controls a[tab-id="+tab+"]");
        var $target = $(".tab-content[tab-id="+tab+"]");
        if($source.attr('cache')){
            //Something else

        }else{
            //comment this line and uncomment the ajax for working on HTML team
            parseTemplateData($target,Drupal.settings.team[tab].members);
            /*
             $.ajax({
             type: "GET",
             url: $source.attr('data-url'),
             dataType: "json",
             success: function(data){
             parseTemplateData($target,data.members);
             $source.attr('cache','true');
             },
             error: function(request, status, error){
             console.log(request.responseText);
             }
             });
             */
        }
    }


    /*** Template
     <div class="content info bg-gray tabs-list-items">
     <div class="shadow-top">
     <div class="profile-left">
     <a href="javascript:void(0);"><img src="" alt="" /></a>
     <a href="javascript:void(0);" class="linkedin hidden"></a>
     <a href="javascript:void(0);" class="twitter hidden"></a>
     </div>
     <div class="profile-right">
     <a href="javascript:void(0);" class="title"></a>
     <a href="javascript:void(0);" class="sub-title"></a>
     <div class="description"></div>
     </div>
     </div>
     </div>
     ***/

    function parseTemplateData(el,data){
        var html = '';
        for(var i=0;i<data.length;i++){
            var item = data[i];
            var text = template.clone();
            var avatar = $(text.find('.avatar img'));
            var title = $(text.find('.title'));
            var subtitle = $(text.find('.sub-title'));
            var content = $(text.find('.description'));
            avatar.attr('src',item.avatar);
            title.text(item.title);
            if(item.subtitle){
                subtitle.text(item.subtitle);
            }
            content.html(item.content);
            if(item.connects){
                if(item.connects.linkedin){
                    var linkedin = $(text.find('.linkedin'));
                    linkedin.attr('href',item.connects.linkedin).removeClass('hidden');
                }
                if(item.connects.twitter){
                    var twitter = $(text.find('.twitter'));
                    twitter.attr('href',item.connects.twitter).removeClass('hidden');
                }
            }
            html += text.html();
        }

        el.html(html);
    }


});