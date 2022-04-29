Rails.application.routes.draw do
  devise_for :users

  root to: 'rentals#index'
  resources :rentals
  get 'rentals/search', to: 'rentals#search'
  post 'rentals/search', to: 'rentals#search'
end
