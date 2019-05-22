Rails.application.routes.draw do
  devise_for :users
  # devise_for :user do
  #   get "/dashboard", to: "devise/sessions#dashboard"
  # end
  root to: 'pages#home'
  resources :flats, only: [:new, :create, :destroy] do
    resources :bookings, only: [:new, :create, :show, :index] do
      resources :reviews, only: [:new, :create, :update, :edit, :index]
   end

  end

  get "/index", to: "flats#index"

  #cresources :users, only: [:show]

  resources :flats, only: [:index, :show] do
    resources :reviews, only: [:show, :destroy]
  end

end
