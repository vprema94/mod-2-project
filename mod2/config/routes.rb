Rails.application.routes.draw do
  resources :occasions, only: [:show, :index, :new, :create]
  resources :outfits
  resources :clothing_outfits
  resources :categories, only: [:show, :index, :new, :create]
  resources :pieces
  resources :users, except: [:index]

  root to: 'users#welcome'
  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as: 'logout'

  root to: 'users#welcome'
end
