jQuery(document).on('turbolinks:load', function() {

    var day = parseInt(jQuery("input#calc-weight").val());
    var weight = day+1
    jQuery("input#calc-day").val(weight);

                               });
