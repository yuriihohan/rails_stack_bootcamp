Rails.application.routes.draw do
  root 'task#list'

  get 'task/create'

  get 'task/edit'

  get 'task/delete'

end
