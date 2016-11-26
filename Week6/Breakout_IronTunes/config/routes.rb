Rails.application.routes.draw do
	root "main#home"
	scope :api do
		resources :tracks, only: [:index]
		# resources (:tracks, {only: [:index, :show], controller: "tracks_api"})
		# Only if model was named tracks_api.rb
		resources :playlists, only: [:create]
	end
end