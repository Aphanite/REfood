Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show]
  root to: 'pages#home'

  resources :supermarkets, only: [:index, :show] do
    resources :products, only: [:index, :show]
  end

  resources :orders, only: [:index, :show, :new, :create] do
    resources :payments, only: :new
  end

  post "/json/adjust_cart", to: "carts#adjust_cart"
  post "/json/change_cart_count", to: "carts#change_cart_count"
  get "/cart", to: "carts#show"
  get "/confirm", to: "orders#confirm"
  get "/empty_cart", to: "carts#empty_cart"
end
