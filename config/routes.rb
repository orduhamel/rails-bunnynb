Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :bunnies, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:new, :create]
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
