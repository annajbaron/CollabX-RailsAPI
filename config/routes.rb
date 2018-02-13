Rails.application.routes.draw do
  resources :collections, only: [:index, :show, :create]
  resources :collections, only: [], shallow: true do
    resources :likes, only: [:create, :destroy], shallow: true
  end

  resources :brands do
    resources :follows, only: [:create, :destroy], shallow: true
  end
  resources :collaborators, only: [:create, :destroy], shallow: true
  resources :follows, only: [:index]
  resources :likes, only: [:index]
  resources :users, only: [:new, :create]
  resources :tokens, only: [:create]
end
