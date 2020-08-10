$(document).on('turbolinks:load', function () {
    $('.js-modal-open').on('click', function() {
        $('.modal-wrapper').fadeIn();
    });
    $('.js-modal-close').on('click', function() {
        $('.modal-wrapper').fadeOut();
    });

    $('.js-header-dropdown-open').on('click', function() {
        const existsIsHidden = $('.js-header-dropdown-menu').hasClass('login-nav-hidden');
        if (existsIsHidden) {
            $('.js-header-dropdown-menu').removeClass('login-nav-hidden')
            $('.js-header-dropdown-menu').addClass('login-nav');
        } else {
            $('.js-header-dropdown-menu').addClass('login-nav-hidden')
            $('.js-header-dropdown-menu').removeClass('login-nav');
        }
    });

    $(document).on('click', function (event) {
        if (!$(event.target).closest('.js-header-dropdown-menu').length && !$(event.target).closest('.js-header-dropdown-open').length)  {
            const existsIsHidden = $('.js-header-dropdown-menu').hasClass('login-nav-hidden');
            if (!existsIsHidden) {
                $('.js-header-dropdown-menu').addClass('login-nav-hidden')
                $('.js-header-dropdown-menu').removeClass('login-nav');
            }
        }
    });
});