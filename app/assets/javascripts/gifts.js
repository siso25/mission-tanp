$(document).on('turbolinks:load', function () {
    $('.js-modal-open').on('click', function() {
        $('.modal-wrapper').fadeIn();
    });
    $('.js-modal-close').on('click', function() {
        $('.modal-wrapper').fadeOut();
    });
});