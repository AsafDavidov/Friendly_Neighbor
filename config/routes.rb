Rails.application.routes.draw do
  resources :images
  resources :rentings
  resources :reviews
  resources :items
  resources :users

  root to: "application#welcome"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
