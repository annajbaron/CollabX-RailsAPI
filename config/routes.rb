Rails.application.routes.draw do
  resources :pitches do
    resources :votes, only: [:create, :update, :destroy], shallow: true
  end
  resources :collections, only: [:index, :show, :create]
  resources :collections do
    resources :likes, only: [:create, :destroy], shallow: true
  end

  resources :brands do
    resources :follows, only: [:create, :destroy], shallow: true
  end
  resources :collaborators, only: [:create, :destroy], shallow: true
  resources :follows, only: [:index]
  resources :votes, only: [:index]
  resources :likes, only: [:index, :show]
  resources :users, only: [:new, :create]
  resources :tokens, only: [:create]
end
