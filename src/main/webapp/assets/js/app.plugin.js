+function ($, window) {
    "use strict";
    $(function () {
        var $window = $(window);
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

        //chosen
        $(".chosen-select").length && $(".chosen-select").chosen();

        //添加到收藏夹
        $.fn.addFavorite = function () {
            var _self = this;
            var _photo_id = this.data("photos-id");
            //隐藏添加收藏 显示正在加载
            _self.hide().siblings("span").removeClass("hide");
            $.ajax({
                type: "post",
                url: "member/favorite/add",
                data: {photosId: _photo_id},
                dataType: "json",
                success: function (data) {
                    //成功后显示红星
                    _self.siblings("span").addClass("hide");
                    _self.siblings("a").removeClass("hide");
                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    alert(errorThrown);
                }
            });
        };
        //END addFavorite

        //图片延迟加载
        
    });//"use strict"; function
}(jQuery, window);