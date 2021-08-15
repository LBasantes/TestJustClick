Rails.application.routes.draw do
  
  root to: "home#Index"
  resources :has_stores
  resources :stores
  resources :products
  resources :categories
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
