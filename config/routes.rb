Rails.application.routes.draw do
  devise_for :users
  root to: 'ndes#index'

  resources :ndes, only: [:show, :new, :create] do
    resources :bookings, only: [:new, :create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
