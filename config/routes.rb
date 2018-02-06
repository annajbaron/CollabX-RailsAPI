Rails.application.routes.draw do
  resources :brands do
    resources :follows, only: [:create, :destroy], shallow: true
  end
  resources :users, only: [:new, :create]
  resources :tokens, only: [:create]
end
