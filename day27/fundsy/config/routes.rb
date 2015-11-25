Rails.application.routes.draw do
  root "users#new"
  resources :users, only: [:new, :create]
  resources :campaigns, only: [:new, :create, :show]
end
