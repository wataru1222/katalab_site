$(function(){
        // #で始まるリンクをクリックしたら実行されます
        $('span[href^="#"]').click(function() {
          // スクロールの速度
          var speed = 400; // ミリ秒で記述
          var href= $(this).attr("href");
          var target = $(href == "#" || href == "" ? 'html' : href);
          var position = target.offset().top;
          $('body,html').animate({scrollTop:position}, speed, 'swing');
          return false;
        });

        $(document).ready(function() {
          var pagetop = $('.pagetop');
            $(window).scroll(function () {
               if ($(this).scrollTop() > 100) {
                    pagetop.fadeIn();
               } else {
                    pagetop.fadeOut();
                    }
               });
               pagetop.click(function () {
                   $('body, html').animate({ scrollTop: 0 }, 500);
                      return false;
           });
        });  
    });
