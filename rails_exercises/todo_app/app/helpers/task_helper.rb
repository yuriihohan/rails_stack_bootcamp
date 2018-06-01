module TaskHelper
  def datepicker_input form, field
    content_tag :td, :data => {:provide => 'datepicker', 'date-format' => 'yyyy/mm/dd', 'date-autoclose' => 'true'} do
      form.text_field field, class: 'form-control datepicker', placeholder: 'YYYY/MM/DD'
    end
  end
end
