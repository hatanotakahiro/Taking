Rails.application.routes.draw do
  devise_for :users

  root to: 'rentals#index'

  get 'rentals/search', to: 'rentals#search'
  post 'rentals/search', to: 'rentals#search'
end
