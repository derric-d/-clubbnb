Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :users do
    resources :flats, only: [:new, :create]
  end

  resources :flats, only: [:index, :show, :destroy]

  resources :bookings do
    resources :reviews, only: [:new, :show, :create, :delete, :update]
  end

  resources :reviews, only: [:new, :show, :create, :delete, :update]
end
