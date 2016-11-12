Rails.application.routes.draw do
	root to: 'concerts#index'
	# resources :tours, only: [:index, :show, :new, :create] do
		resources :concerts, only: [:index, :show, :new, :create]
	# end
end