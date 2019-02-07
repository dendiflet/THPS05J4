Rails.application.routes.draw do
	root "gossips#home"
  get '/team', to: "static#team"
  get '/contact', to: "static#contact"
  get 'gossips/user/:i', to: 'users#show'
	put '/gossips/like/:i', to: 'likes#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :gossips, only: [:new, :create, :show, :edit, :update, :destroy]
  resources :cities, only: [:show]
  resources :sessions, only: [:new, :create, :destroy]
  resources :users


end
