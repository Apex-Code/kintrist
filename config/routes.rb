Rails.application.routes.draw do
  devise_for :models
  resources :books
  root 'books#index'
end
