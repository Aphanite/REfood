Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show]
  root to: 'pages#home'

  resources :supermarkets, only: [:index, :show] do
    resources :products, only: [:index, :show]
  end
  resources :orders, only: [:index, :show]

  post "/json/adjust_cart", to: "carts#adjust_cart"
end
