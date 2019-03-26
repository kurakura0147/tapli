jQuery(document).on('turbolinks:load', function() {
        var loop = setInterval(function() {
            //li先頭要素のクローンを作成
            var clone = jQuery(".main-content__about--up li:first").clone(true);
            //li先頭要素のマージンレフトにマイナスを指定しアニメーションさせる
            jQuery(".main-content__about--up li:first").animate({
            marginLeft : "-100%"
            }, {
            duration : 6000,
            complete : function() {
                //処理完了時に先頭要素を削除
                jQuery(".main-content__about--up li:first").remove();
                //クローンをliの最後に追加
                clone.clone(true).insertAfter(jQuery(".main-content__about--up li:last"));
            }
            });
        }, 1000);

});

