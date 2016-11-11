Rails.application.routes.draw do
	root to: 'tour#index'
	resources :tour, only: [:index, :show, :new, :create] do
		resources :concert, only: [:index, :show, :new, :create]
	end
end