// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).ready(function () {
    is_newForm = $('form').attr('id') === 'new_feature_product';
    if (!is_newForm) {
        $('.re_upload').change(function (e) {
            var fileName = e.target.files[0].name;
            $('.plain_label').text(fileName);
        })
    }
});