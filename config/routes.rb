Rails.application.routes.draw do
  resources :brands
  resources :users, only: [:new, :create]
  resources :tokens, only: [:create]
end
