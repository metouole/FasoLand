Rails.application.routes.draw do

  devise_for :utilisateurs
	resources :messages do
		resources :comments
	end
	root 'messages#index'
end
