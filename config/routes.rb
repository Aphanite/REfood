Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show]
  root to: 'pages#home'

  resources :supermarkets, only: [:index, :show] do
    resources :products, only: [:index, :show]
  end

  resources :orders, only: [:index, :show, :new] do
    resources :payments, only: :new
  end

  post "/json/adjust_cart", to: "carts#adjust_cart"
  get "/cart", to: "carts#show"
  get "/confirm", to: "orders#confirm"
  get "/empty_cart", to: "carts#empty_cart"

  get "/desktop", to: "pages#desktop"
end
