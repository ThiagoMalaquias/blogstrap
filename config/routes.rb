Rails.application.routes.draw do
  resources :managers
  resources :bookings
  resources :clients
  resources :vehicles
  resources :brands

  root to: "home#index"

  get '/manager/login', to: 'manager_login#login'
  get '/manager/logout', to: 'manager_login#logout'
  post '/manager/sigin', to: 'manager_login#sigin'
end
