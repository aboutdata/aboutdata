
Date.now = Date.now || function () {
    return +new Date;
};

+function ($) {

    $(function () {
        var $window = $(window);
        // unmobile
        $window.width() < 768 && mobile();
        // resize
        var $resize, $width = $window.width();
        $window.resize(function () {
            if ($width !== $window.width()) {
                clearTimeout($resize);
                $resize = setTimeout(function () {
                    setHeight();
                    $window.width() < 768 && mobile();
                    $window.width() >= 768 && mobile('reset') && fixVbox();
                    $width = $window.width();
                }, 500);
            }
        });

        // fluid layout
        var setHeight = function () {
            $('.app-fluid #nav > *').css('min-height', $(window).height() - 60);
            return true;
        }
        setHeight();

        // fix vbox
        var fixVbox = function () {
            $('.ie11 .vbox').each(function () {
                $(this).height($(this).parent().height());
            });
            return true;
        }
        fixVbox();

        //js 
        

    });
}(jQuery);