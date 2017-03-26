Rails.application.routes.draw do
  resources :rooms do
  	resources :comments, only: [:create, :destroy]
	end  
  get 'auth/:provider/callback', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  root 'homes#top'
end