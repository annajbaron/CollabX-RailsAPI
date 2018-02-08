Rails.application.routes.draw do
  resources :collections, only: [:index, :show]
  resources :brands do
    resources :follows, only: [:create, :destroy], shallow: true
  end
  resources :collaborators, only: [:create, :destroy], shallow: true
  resources :follows, only: [:index]
  resources :users, only: [:new, :create]
  resources :tokens, only: [:create]
end
