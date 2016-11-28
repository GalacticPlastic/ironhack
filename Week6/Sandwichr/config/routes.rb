Rails.application.routes.draw do
  devise_for :users
	root to: 'site#home'
	resources :sandwiches, only: [:index, :show], controller: "sandwich_views"
	scope "/api" do
		resources :ingredients, except: [:new, :edit]
		resources :sandwiches, except: [:new, :edit]
		post "sandwiches/:id/ingredients/add", to: "sandwiches#add_ingredient"
		delete "sandwiches/:id/ingredients/remove", to: "sandwiches#remove_ingredient"
	end
end