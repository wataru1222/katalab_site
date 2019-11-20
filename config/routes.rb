Rails.application.routes.draw do
  devise_for :admins
  root to: 'home#index'
  resources :contacts, only: [:new, :create]
  resources :treatments, only: [:index]

  resources :treatments,only: [:index, :show]

  namespace :admin do
    root to: 'treatments#index'
    resources :treatments

  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
