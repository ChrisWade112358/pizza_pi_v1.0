Rails.application.routes.draw do
  resources :carts
  resources :line_items
  resources :ingredients
  resources :menu_items
  root to: 'pages#home'
  devise_for :users, controllers: {omniauth_callbacks: 'users/omniauth'}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
