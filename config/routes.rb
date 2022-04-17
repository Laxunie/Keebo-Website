Rails.application.routes.draw do
  get 'shared/navbar'
  root 'boards#index'
  resources :boards
  resources :layouts
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
