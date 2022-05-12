Rails.application.routes.draw do
  devise_for :users
  # devise_for :users
  root 'rooms#index'
  get 'my_portfolio', to: 'users#my_portfolio'
  get 'search_stock', to: 'stocks#search'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
