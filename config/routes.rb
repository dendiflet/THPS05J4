Rails.application.routes.draw do
	root "dynamic#home"
  get '/team', to: "static#team"
  get '/contact', to: "static#contact"
  get '/home/:first_name', to: 'dynamic#home_first_name'
  get 'gossip/:i', to: 'dynamic#one_gossip'
  get 'gossip/user/:i', to: 'dynamic#user'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
