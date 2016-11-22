Rails.application.routes.draw do
	get "/", to: "contacts#index"
	resources :contacts
end