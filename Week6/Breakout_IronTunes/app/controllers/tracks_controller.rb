class TracksController < ApplicationController
	def index
		track_list = Track.all.select(:id, :name, :artist, :album, :genre, :picture)
		render json: track_list
	end
end
# => Track is referring through the Model track.
# => It is through Models that queries can be made to the database.