Rails.application.routes.draw do
  resources :vehicles
  resources :brands

  root to: "vehicles#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
