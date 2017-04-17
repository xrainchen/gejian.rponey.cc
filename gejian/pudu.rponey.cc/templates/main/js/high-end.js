    ! function($) {
        var ul = $(".high-end-nav");
        var ulwidth = 0;
        var animateWidth = 100;
        ul.find("li").each(function(i, e) {
            ulwidth += $(e).outerWidth();
        })
        ul.css({
            width: ulwidth + 1
        })

        setleft();

        $(".high-prev").click(function() {
            var nowleft = -parseFloat(ul.css("left"));
            if (nowleft <= animateWidth) {
                nowanimate = 0;
            } else {
                nowanimate = -(nowleft - animateWidth);
            }
            ul.stop(true, true).animate({
                left: nowanimate + "px"
            }, 500)
        })
        $(".high-next").click(function() {
            var nowleft = -parseFloat(ul.css("left"));
            if (nowleft + 570 > ul.width()) {
                return;
            }
            ul.stop(true, true).animate({
                left: (nowleft + animateWidth) * (-1)
            }, 500)
        })

        function setleft() {
            var left = 0;
            var index = $(".high-end-nav li.on").index();
            for (var i = 0; i < index; i++) {
                left += $(".high-end-nav li").eq(i).outerWidth();
            }
            ul.css({
                left: -left
            })
        }
    }(jQuery);