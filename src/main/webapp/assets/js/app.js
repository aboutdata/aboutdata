+function ($) {
    $(function () {
        //添加到收藏夹
        $(document).on("click", ".addFavorite", function () {
            $(this).addFavorite();
            return false;//阻止链接跳转
        });
        //背景图片
        $('body').vegas({
            timer: false,
            slides: [
                {src: CC.assets_url + 'assets/images/background1.jpg'}
            ]
        });
        $("img").error(function () {
            $(this).attr("src", CC.assets_url + 'assets/images/image20.jpg');
        });
    });
}(window.jQuery);