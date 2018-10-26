Rails.application.routes.draw do
  resources :images, only: [:new,:create,:destroy]
  resources :rentings, only: [:new,:create,:show]
  resources :reviews, only: [:new,:create, :edit, :update, :destroy]
  resources :items
  resources :users

  root to: "sessions#welcome"
  get '/login', to: "sessions#login", as: "login"
  post '/login', to: "sessions#create"
  get 'sessions/delete', to: "sessions#destroy", as: "logout"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
