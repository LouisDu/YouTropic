Rails.application.routes.draw do
  devise_for :users
  root 'places#index'
  resources :places, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
    resources :bookings, only: [:new, :create]
    resources :pictures, only: [:new, :create]
  end
  resources :booking, only: [:destroy]
  resources :user, only: [:index, :show, :new, :create]
end
