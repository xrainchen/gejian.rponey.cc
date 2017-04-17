    ! function($) {
        var height = $(".pd-content").height();
        $(".pd-content").height(height);

        var fixBox = $(".content-side-box");
        var offsetTop = fixBox.offset().top;
        $(window).scroll(function() {
            var scrollTop = $(window).scrollTop() + 100;

            if (scrollTop > offsetTop) {
                fixBox.addClass("fixed");
            } else {
                fixBox.removeClass("fixed");
            }
        })
    }(jQuery);