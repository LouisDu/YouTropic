Rails.application.routes.draw do
  root 'pages#home'
  devise_for :users
  resources :profiles, only: :show
  resources :users do
    resources :profiles, only: [:edit, :update]
  end

  resources :places, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
    resources :bookings, only: [:new, :show, :create, :destroy]
    resources :pictures, only: [:new, :create]
  end
end
