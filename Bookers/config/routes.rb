Rails.application.routes.draw do
  
  devise_for :users
  root 'top#index'
  resources :books, only: [:new, :create, :index, :show]
  resources :users, only: [:new, :create, :index, :show]
  resources :top, only: [:new, :create, :index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
