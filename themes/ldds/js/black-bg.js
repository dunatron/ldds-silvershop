/**
 * Created by Heath on 8/11/16.
 */

$(document).ready(function () {

   var blackBackground = $('.black-right-bg'),
       productWrapper = $('.product-panels-wrapper');


    function makeBlackBackground(){
        var height = $(productWrapper).height();
        console.log(height);
        // $(blackBackground).css('width', '50%');
        // // $(blackBackground).css('height', height);
        // $(blackBackground).css('width', '50%').css('width', '-=12px');

    }

    makeBlackBackground();


    // Run the function in case of window resize
    jQuery(window).resize(function() {
        makeBlackBackground();
    });

});
