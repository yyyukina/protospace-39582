Rails.application.routes.draw do
  devise_for :users
  root 'prototypes#index'
  resources :users, only: [:edit, :update, :show]
  resources :prototypes, only: [:index, :new, :create, :show, :edit, :update, :destroy] do
    resources :comments, only: [:create]
  end
end
