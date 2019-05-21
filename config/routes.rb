Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :flats, only: [:new, :create, :destroy] do
    resources :bookings, only: [:new, :create, :show, :index] do
      resources :reviews, only: [:new, :create, :delete, :update]
   end

  end

  resources :flats, only: [:index, :show] do
    resources :reviews, only: [:show]
  end

end
