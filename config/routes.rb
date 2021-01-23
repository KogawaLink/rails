Rails.application.routes.draw do
  get 'topics/new'
  get 'sessions/new'
  
  get 'users/new'
  get 'pages/index'
  root 'pages#index'
  
  root 'pages#index'
  get 'pages/help'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#index'
  get 'pages/help'
  
  resources :users
  
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  resources :user_params
  resources :topics
  
  get 'favorites/index'
  post '/favorites', to: 'favorites#create'
  
  post 'favorite/:id' => 'favorites#create', as: 'create_favorite'
  delete 'favorite/:id' => 'favorites#destroy', as: 'destroy_favorite'
end
