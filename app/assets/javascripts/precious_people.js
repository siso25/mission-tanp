$(document).on('turbolinks:load', function () {
    // タブの切り替え機能
    $('.switch-precious-day').on('click', function() {
        const existsIsActive = $('.switch-precious-person').hasClass('is-active');
        if (existsIsActive) {
            $('.switch-precious-day').addClass('is-active');
            $('.switch-precious-person').removeClass('is-active');

            $('.precious-day-panel').addClass('is-show')
            $('.precious-person-panel').removeClass('is-show')
        }
    });
    
    $('.switch-precious-person').on('click', function() {
        const existsIsActive = $('.switch-precious-day').hasClass('is-active');
        if (existsIsActive) {
            $('.switch-precious-person').addClass('is-active');
            $('.switch-precious-day').removeClass('is-active');

            $('.precious-person-panel').addClass('is-show')
            $('.precious-day-panel').removeClass('is-show')
        }
    });
});