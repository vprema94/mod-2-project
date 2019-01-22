Rails.application.routes.draw do
  resources :occasions
  resources :outfits
  resources :clothing_outfits
  resources :categories
  resources :pieces
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
