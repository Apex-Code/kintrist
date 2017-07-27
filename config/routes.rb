Rails.application.routes.draw do
  devise_for :users
  devise_for :models
  resources :books
  root 'books#index'
end
