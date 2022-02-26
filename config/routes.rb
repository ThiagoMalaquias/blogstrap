Rails.application.routes.draw do
  resources :vehicles
  resources :brands

  root to: "home#index"
end
