jQuery(function(){
    jQuery(window).scroll(function (){
        jQuery('.fadein').each(function(){
            var targetElement = jQuery(this).offset().top;
            var scroll = jQuery(window).scrollTop();
            var windowHeight = jQuery(window).height();
            if (scroll > targetElement - windowHeight + 60){
                jQuery(this).css('opacity','0.8');
                jQuery(this).css('transform','translateY(0)');
            }
        });
    });
});
