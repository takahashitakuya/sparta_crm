Rails.application.routes.draw do
  devise_for :users
  resources :customers
  resources :posts
  root 'customers#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

 resources :comments, only: [:create, :destroy]
end
