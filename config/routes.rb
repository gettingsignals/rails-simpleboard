Rails.application.routes.draw do
  resources :users
  root 'users#index'
  resources :categories
  get 'categories/new'
  resources :messages
  get 'messages/index'
end
