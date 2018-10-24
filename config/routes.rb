Rails.application.routes.draw do
  resources :images
  resources :rentings
  resources :reviews
  resources :items
  resources :users

  root to: "sessions#welcome"
  get '/login', to: "sessions#login", as: "login"
  post '/login', to: "sessions#create"
  get 'sessions/delete', to: "sessions#destroy", as: "logout"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
