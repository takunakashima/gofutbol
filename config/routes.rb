Rails.application.routes.draw do
  devise_for :users
  root to: 'posts#index'
  # resources :posts  do
  resources :posts, expect: [:index] do
    resource :favorites, only: [:create, :destroy]
    resources :comments, only: [:create]
    collection do
      get 'search'
    end
  end
  # resources :users, only: :show
  resources :users, only: [:show, :edit, :update] do
    get :favorites, on: :collection
  end

  end
