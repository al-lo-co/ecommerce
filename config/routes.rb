Rails.application.routes.draw do
  resources :products
  resources :categories
  devise_for :users
  get 'home/search'
  get 'home/index'
  get 'home/purchases'
  get 'home/history'
  get 'home/favorites'
  get 'home/reputation'
  get 'home/sales'
  get 'home/products'
  get 'home/administrator'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index"
end
