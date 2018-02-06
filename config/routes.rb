Rails.application.routes.draw do
  resources :brands do
    resources :follows, only: [:create, :destroy], shallow: true
  end
  resources :follows, only: [:index]
  resources :users, only: [:new, :create]
  resources :tokens, only: [:create]
end
