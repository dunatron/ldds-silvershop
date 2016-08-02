$( document ).ready(function() {

    /* Mobile navigation */
    $(".nav-open").on("click",function(){

        $('nav').addClass('js-show');

    });

    $(".nav-close").on("click",function(){

        $('nav').removeClass('js-show');

    });

});