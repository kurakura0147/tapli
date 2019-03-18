$(function(){
    $(window).scroll(function (){
        $('.fadein').each(function(){
            var targetElement = $(this).offset().top;
            var scroll = $(window).scrollTop();
            var windowHeight = $(window).height();
            if (scroll > targetElement - windowHeight + 160){
                $(this).css('opacity','0.8');
                $(this).css('transform','translateY(0)');
            }
        });
    });
});
