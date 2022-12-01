Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'product/index'
  get 'user/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'videosupload/index'
  # Defines the root path route ("/")
  root "product#index"
end
