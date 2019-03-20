$(document).on('turbolinks:load', function() {
    //メニューのドロップダウン機能
        $('.down-menu').hover(function(){
            $("ul:not(:animated)", this).slideDown();
        }, function(){
            $("ul.child",this).slideUp();
        });
});
