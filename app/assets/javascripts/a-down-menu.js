jQuery(document).on('turbolinks:load', function() {
    //メニューのドロップダウン機能
        jQuery('.down-menu').hover(function(){
            jQuery("ul:not(:animated)", this).slideDown();
        }, function(){
            jQuery("ul.child",this).slideUp();
        });

        jQuery('.up-menu').hover(function(){
            jQuery("ul:not(:animated)", this).slideDown();
        }, function(){
            jQuery("ul.parent",this).slideUp();
        });
});
