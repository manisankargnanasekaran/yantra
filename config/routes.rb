Rails.application.routes.draw do
  namespace :api, defaults: {format: 'json'} do
  	namespace :v1 do
         post 'login' => 'sessions#login_attempt'
          get 'logout' => 'sessions#delete'

		  resources :users
		  resources :tenants
		  resources :contacts
		  resources :addresses
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
