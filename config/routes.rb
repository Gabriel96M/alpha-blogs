Rails.application.routes.draw do
	resources :users
  	resources :articles
  	#get 'pages/about'
	root 'articles#index'
	get 'about', to: 'pages#about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
