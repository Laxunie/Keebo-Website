Rails.application.routes.draw do
  get 'about/index'
  get 'accounts/show'
  get 'accounts/index'
  get 'cart/create'
  get 'cart/destroy'
  root to: 'boards#index'
  get 'accounts/signin'
  devise_for :accounts
  get 'shared/navbar'
  delete 'accounts/signout'
  resources :boards
  resources :layouts
  resources :cart
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :cart, only: [:create, :destroy]
  scope '/checkout' do
    post 'create', to: 'checkout#create', as: 'checkout_create'
    get 'cancel', to: 'checkout#cancel', as: 'checkout_cancel'
    get 'success', to: 'checkout#success', as: 'checkout_success'
  end
  post 'cart/update'
  get 'cart/checkout'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
