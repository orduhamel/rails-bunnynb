Rails.application.routes.draw do
  get 'bookings/index'
  get 'bookings/create'
  devise_for :users
  root to: 'pages#home'
  resources :bunnies, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:create]
  end

  resources :bookings, only: :index

  namespace :owner do
    resources :bookings, only: [:index] do
      member do
        patch :confirm
        patch :refuse
      end
    end

    resources :bunnies, only: [:index]
  end
end
