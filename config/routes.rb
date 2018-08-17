Rails.application.routes.draw do
  devise_for :users
  root to: 'ndes#index'

  resources :ndes, only: [:show, :new, :create] do
    resources :bookings, only: [:new, :create]
    resources :reviews, only: [:create]
  end

  patch "bookings/:id/deny", to: "bookings#deny", as: :booking_deny
  patch "bookings/:id/accept", to: "bookings#accept", as: :booking_accept

  resources :users, only: [:show, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
