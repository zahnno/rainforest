Rails.application.routes.draw do
 resources :sessions, only: [:new, :create, :destroy]
 resources :products do
  resources :reviews, only: [:show, :create, :destroy]
end
 resources :users, only: [:new, :create]
end
