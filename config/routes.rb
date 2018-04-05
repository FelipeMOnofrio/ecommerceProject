Rails.application.routes.draw do

  #take the 2 gets up and put in resources
  resources :products, only: [:index, :show]
  resources :customers, only: [:show, :create]
  resources :categories
  resources :orders, only:[:index, :create]
  root to: 'products#index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
