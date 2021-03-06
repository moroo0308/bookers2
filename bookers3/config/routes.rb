Rails.application.routes.draw do
  devise_for :users
  root 'homes#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :homes, only: [:index, :new]
  resources :books
end
