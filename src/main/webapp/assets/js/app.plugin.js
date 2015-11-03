+function ($) {
    "use strict";
    $(function () {
        // slim-scroll
        $('.no-touch .slim-scroll').each(function () {
            var $self = $(this), $data = $self.data(), $slimResize;
            $self.slimScroll($data);
            $(window).resize(function (e) {
                clearTimeout($slimResize);
                $slimResize = setTimeout(function () {
                    $self.slimScroll($data);
                }, 500);
            });
            $(document).on('updateNav', function () {
                $self.slimScroll($data);
            });
        });
        // docs
        $('#docs pre code').each(function () {
            var $this = $(this);
            var t = $this.html();
            $this.html(t.replace(/</g, '&lt;').replace(/>/g, '&gt;'));
        });
        //chosen
        $(".chosen-select").length && $(".chosen-select").chosen();

    });
}(window.jQuery);