class SandwichesController < ApplicationController
	protect_from_forgery with: :null_session
	def index
		sandwiches = Sandwich.all
		render json: sandwiches
	end
	def create
		sandwich = Sandwich.create(sandwich_params)
		render json: sandwich
	end
	def add_ingredient
		sandwich = Sandwich.find(params[:id])
		ingredient = Ingredients.find_by(id: params[:ingredient_id])
		sandwich.ingredients.push(ingredient)
		# SandwichIngredient.create(sandwich_id: params[:id], ingredient_id: params[:ingredient_id])
		render json: sandwich
	end
	def show
		sandwich = Sandwich.find(params[:id])
		ingredients = sandwich.ingredients
		render json: sandwich, include: [:ingredients]
	end
	def update
		sandwich = Sandwich.find(params[:id])
		sandwich.update(sandwich_params)
		render json: sandwich
	end
	def destroy
		sandwich = Sandwich.find(params[:id])
		sandwich.destroy
		render json: sandwich
	end
	private
	def sandwich_params
		params.require(:sandwich) .permit(:name, :bread_type)
	end
end