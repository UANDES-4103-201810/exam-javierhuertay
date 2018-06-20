Rails.application.routes.draw do
  resources :pizza_oders
  resources :orders
  resources :delivery_infos
  resources :customers
  resources :pizzas
  resources :items
  resources :recipes
  resources :crusts
  resources :ingredients
  root 'application#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
