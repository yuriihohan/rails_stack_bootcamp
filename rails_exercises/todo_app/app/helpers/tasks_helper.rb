module TasksHelper
  def datepicker_input(form, field)
    content_tag :td, :data => { :provide => 'datepicker', 'date-format' => 'yyyy/mm/dd', 'date-autoclose' => 'true' } do
      form.text_field field, class: 'form-control datepicker', placeholder: 'YYYY/MM/DD'
    end
  end

  def due_date_class(task)
    return '' unless task.completion_date.nil?
    days_left = task.days_left
    if days_left >= 0 && days_left <= 5
      'urgent'
    elsif days_left > 5 && days_left < 15
      'upcoming'
    else
      'low_prio'
    end
  end

  def save_url(task)
    if task.id.nil?
      'create'
    else
      'update'
    end
  end
end
