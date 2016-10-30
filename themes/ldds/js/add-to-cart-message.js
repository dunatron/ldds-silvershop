/**
 * Created by Heath on 30/10/16.
 */

var addProductBtn = $('.add-product'),
    sessionMessage = $('.add-product-message'),
    closeMessage = $('.close-message');

$(addProductBtn).on('click', function () {
    $(sessionMessage).addClass('show');
});

$(closeMessage).on('click', function(){
    $(sessionMessage).removeClass('show');
});

$('.designer-modal').on('hidden.bs.modal', function () {
    $(sessionMessage).removeClass('show');
})



