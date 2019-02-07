Rails.application.routes.draw do
	root "dynamic#home"
  get '/team', to: "static#team"
  get '/contact', to: "static#contact"
  get '/home/:first_name', to: 'dynamic#home_first_name'
  get 'gossips/user/:i', to: 'dynamic#user'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :gossips, only: [:new, :create, :show, :edit, :update, :destroy]
  resources :cities, only: [:show]
  resources :sessions, only: [:new, :create, :destroy]
  resources :users


end
