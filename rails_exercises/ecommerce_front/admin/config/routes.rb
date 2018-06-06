Admin::Engine.routes.draw do
  get 'shipping_info/index'

  get 'shipping_info/edit'

  post 'shipping_info/update'
end
