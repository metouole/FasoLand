Rails.application.routes.draw do

  devise_for :utilisateurs
	resources :messages
	root 'messages#index'
end
