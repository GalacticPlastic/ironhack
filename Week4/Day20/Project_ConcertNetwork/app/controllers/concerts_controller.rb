class ConcertsController < ApplicationController
	def index
		# @tour = Tour.find(params[:tour_id])
		# @concert = @tour.concerts
		@concerts_today = Concert.where(date: DateTime.now.to_date..Date.tomorrow)
		@concerts_this_month = Concert.where(date: DateTime.now.to_date...Date.today.end_of_month)
		render :index
	end
	def show
		@concert = Concert.find(params[:id])
		# @concert = @tour.concerts.find_by(id: params[:id])
		render :show
	end
	def new
		@concert = Concert.new
		# @tour = Tour.find(params[:tour_id])
		# @concert = @tour.concerts.new
		render :new
	end
	def create
		@concert = Concert.new(entry_params)
		@concert.save
		redirect_to tour_path(@concert)
		# @tour = Tour.find(params[:tour_id])
		# @concert = @tour.concerts.new(entry_params)
		# if @concert.save
		# 	redirect_to tour_concerts_path(@tour)
		# else
		# 	render :new
		# end
	end
	private
	def entry_params
		params.require(:concert).permit(:date, :venue, :city, :state)
	end
end