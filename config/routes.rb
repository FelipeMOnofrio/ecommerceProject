Rails.application.routes.draw do

  get 'charges/new'

  get 'charges/create'

  post 'login/login'

  get 'login/logout'

  get 'contact/index'


  #take the 2 gets up and put in resources
  resources :products, only: [:index, :show]
  resources :customers, only: [:index, :show, :create, :edit, :update]
  resources :categories
  resources :orders, only:[:index, :create] do
    collection do
      post :clear_orders
    end

    member do
      post :add_order
      post :remove_order
    end
  end
  resources :about, only:[:index]
  resources :charges, only:[:create, :new]
  get 'search', to: 'search#index', as: 'search'


  root to: 'products#index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
