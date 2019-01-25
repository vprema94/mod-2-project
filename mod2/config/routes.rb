Rails.application.routes.draw do
  resources :occasions, only: [:show, :index, :new, :create]
  resources :outfits
  resources :clothing_outfits
  resources :categories, only: [:show, :index, :new, :create]
  resources :pieces
  resources :users

  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as: 'logout'

  root to: 'users#welcome'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
