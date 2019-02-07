Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
	root "gossips#home"
  get '/team', to: "static#team"
  get '/contact', to: "static#contact"
  get 'gossips/user/:i', to: 'users#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :gossips, only: [:new, :create, :show, :edit, :update, :destroy]
  resources :cities, only: [:show]
  resources :sessions, only: [:new, :create, :destroy]
  resources :users


end
