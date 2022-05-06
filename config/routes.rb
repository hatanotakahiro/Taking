Rails.application.routes.draw do
  devise_for :users
  get 'users/search', to: 'users#search'
  post 'users/search', to: 'users#search'

  root to: 'rentals#index'
  resources :rentals
  get 'rentals/search', to: 'rentals#search'
  post 'rentals/search', to: 'rentals#search'

  get 'rentals/permission', to: 'rentals#permission'
  post 'rentals/permission', to: 'rentals#permission'

  get 'rentals/no_permission', to: 'rentals#no_permission'
  post 'rentals/no_permission', to: 'rentals#no_permission'

  post 'rentals/update', to: 'rentals#update'

  end
