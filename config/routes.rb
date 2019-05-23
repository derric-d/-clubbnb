Rails.application.routes.draw do
  devise_for :users
  # devise_for :user do
  #   get "/dashboard", to: "devise/sessions#dashboard"
  # end
  root to: 'pages#home'
  resources :flats  do
    resources :bookings, only: [:new, :create, :show, :index, :destroy]
    resources :reviews, only: [:new, :create, :update, :show, :edit, :index]
  end


  get "/dashboard", to: "pages#dashboard"
  #cresources :users, only: [:show]

  resources :reviews, only: [ :destroy ]
  # resources :bookings, only: [ :destroy ]
end
