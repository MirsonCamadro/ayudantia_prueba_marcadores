Rails.application.routes.draw do
  resources :products
  resources :categories
  resources :product_types

  root "products#index"

  get "api/category/:id", to: "categories#api"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
