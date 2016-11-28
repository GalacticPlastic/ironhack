class SandwichViewsController < ApplicationController
	before_action :authenticate_user!
	def index
		@sandwiches = Sandwich.order(created_at: :desc)
		render :index
	end
	def show
		@the_sandwich = Sandwich.find(params[:id])
		@ingredients = Ingredient.order(created_at: :desc)
		render :show
	end
end