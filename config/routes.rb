Rails.application.routes.draw do
  get 'admin_page/category'
  get 'admin_page/home'
  root 'categories#index'
  get 'sessions/create'
  get 'sessions/destroy'
  resources :users, :except => :index
  resources :categories
  get 'categories/new'
  resources :messages, :except => :index
  get '/signup', to: 'users#new'
  get 'sessions/new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
