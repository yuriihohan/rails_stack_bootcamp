var Utils = Utils || {};

Utils.bindFileUploadWithLabel = function(new_form_id){
    is_newForm = $('form').attr('id') === new_form_id;
    if (!is_newForm) {
        $('.re_upload').change(function (e) {
            var fileName = e.target.files[0].name;
            $('.plain_label').text(fileName);
        })
    }
}