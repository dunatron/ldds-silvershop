/**
 * Created by Heath on 23/11/16.
 */




$(document).ready(function () {

    $( document ).ajaxComplete(function() {

        //console.log('this just keeps on reloading...');
        $.getScript("themes/ldds/js/ajax-message-end.js");
    });

});


