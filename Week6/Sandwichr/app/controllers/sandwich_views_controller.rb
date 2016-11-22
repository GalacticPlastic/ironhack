class SandwichViewsController < ApplicationController
	def index
		@sandwiches = Sandwich.order(created_at: :desc)
		render :index
	end
	def show
		@the_sandwich = Sandwich.find(params[:id])
		render :show
	end
end