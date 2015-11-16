Rails.application.routes.draw do
  resources :sites,     only: [:show]
  resources :questions, only: [:show]
end
