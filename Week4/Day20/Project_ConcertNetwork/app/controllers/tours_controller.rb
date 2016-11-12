class ToursController < ApplicationController
	def index
		# @all_tours = Tour.order(created_at: :desc) # .limit(10)
		render :index
	end
	def show
		@tour = Tour.find(params[:id])
		render :show
	end
	def new
		@tour = Tour.new
		render :new
	end
	def create
		@tour = Tour.new(entry_params)
		@tour.save
		redirect_to tour_path(@tour)
	end
	private
	def entry_params
		params.require(:tour).permit(:name, :artist, :description, :price)
	end
end