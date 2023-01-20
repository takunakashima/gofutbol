Rails.application.routes.draw do
  devise_for :users
  root to: 'posts#index'
  # resources :posts  do
  resources :posts, expect: [:index] do
    resources :comments, only: [:create]
    collection do
      get 'search'
    end
  end
  post 'favorite/:id' => 'favorites#create', as: 'create_favorite'
  delete 'favorite/:id' => 'favorites#destroy', as: 'destroy_favorite'
  # resources :users, only: :show
  resources :users, only: [:show, :edit, :update] do
    # get :favorites, on: :collection
    
  end

  end
