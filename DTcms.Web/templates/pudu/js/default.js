    ! function($) {
        function SetWidth() {

            var setLi = $(".index-slider-nav>li");
            var lisize = setLi.size();
            if (!lisize) {
                return;
            }
            var nowwidth = 1024 / lisize;

            $(".index-slider-nav").show().find("li").css({
                width: nowwidth
            })
        }
        SetWidth();
        $(".index-slider").slide({
            mainCell: ".bd ul",
            effect: "left",
            vis: "auto",
            trigger: "click",
            autoPlay: true,
            interTime: 7000,
            delayTime: 650,
            scroll: 1,

        });
    }(jQuery);