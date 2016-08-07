/**
 * Created by Heath on 7/08/16.
 */
$(document).ready(function () {

    $('.btn-vertical-slider').on('click', function () {

        if ($(this).attr('data-slide') == 'next') {
            $(this).closest(".vertical-slider").carousel('next');
            //$('#myCarousel').carousel('next');
        }
        if ($(this).attr('data-slide') == 'prev') {
            $(this).closest(".vertical-slider").carousel('prev');
        }

    });
});