Admin::Engine.routes.draw do
  resources :feature_products, except: :show do
    get :delete_confirmation
  end

  resources :slider_images, except: :show do
    get :delete_confirmation
  end

  get 'shipping_info/index'

  get 'shipping_info/edit'

  post 'shipping_info/update'
end
