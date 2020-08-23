$(document).on('turbolinks:load', function (){
    const val = $('.name-select').val();
    if(val) {
        $('.precious-person-data').css('display','none');
        $('.precious-person-data').find('input').prop('disabled','disabled');
    } else {
        $('.precious-person-data').css('display','block');
        $('.precious-person-data').find('input').removeProp('disabled');
    }

    $('.name-select').on('change', function() {
        const val = $('.name-select').val();
        if(val) {
        $('.precious-person-data').css('display','none');
            $('.precious-person-data').find('input').prop('disabled','disabled');
        } else {
            $('.precious-person-data').css('display','block');
            $('.precious-person-data').find('input').removeProp('disabled');
        }
    });
});