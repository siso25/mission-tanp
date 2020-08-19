$(document).on('turbolinks:load', function (){
    $('.name-select').change(function() {
        const val = $('.name-select').val();
        if(val) {
            $('.precious-person-data').css('display','none');
            $('.precious-person-data').find('input').prop('disabled','true');
        } else {
            $('.precious-person-data').css('display','block');
            $('.precious-person-data').find('input').prop('disabled','false');
        }
    });
});