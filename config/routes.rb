Rails.application.routes.draw do
  resources :managers
  resources :bookings
  resources :clients
  resources :vehicles
  resources :brands

  root to: "home#index"
end
