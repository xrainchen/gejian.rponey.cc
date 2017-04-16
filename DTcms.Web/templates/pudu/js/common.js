    //头部导航
    ! function($) {
        $(".header-nav>li").hover(function() {
            $(this).find(".sub-nav").show();
            $(this).addClass("noborder").prev("li").addClass("noborder");
        }, function() {
            $(this).find(".sub-nav").hide();
            $(this).removeClass("noborder").prev("li").removeClass("noborder");
        })
    }(jQuery);


    //产品移动
    ! function($) {

        $(".has-shodow >li").hover(function() {
            $(this).find(".product-shodow").stop(true).animate({
                "opacity": 1
            }, 150)
        }, function() {
            $(this).find(".product-shodow").stop(true).animate({
                "opacity": 0
            }, 150)
        })
    }(jQuery);