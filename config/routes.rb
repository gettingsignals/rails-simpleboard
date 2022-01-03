Rails.application.routes.draw do
  root 'categories#index'
  get 'sessions/create'
  get 'sessions/destroy'
  resources :users
  resources :categories
  get 'categories/new'
  resources :messages
  get 'messages/index'
  get '/signup', to: 'users#new'
  get 'sessions/new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
