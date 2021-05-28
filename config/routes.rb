Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/dashboard', to: 'pages#dashboard'
  resources :boats, only: :index
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :boats do
    resources :reviews, only: [:new, :create]
    resources :bookings, only: [:new, :create, :show]
  end
  resources :bookings, only: [:update]
end
