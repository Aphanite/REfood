Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/users/:id', to: 'profiles#show', as: "profile"
  
  resources :supermarkets, only: [:index, :show] do
    resources :products, only: [:index, :show]
  end
  resources :orders, only: [:index, :show, :create]
end
