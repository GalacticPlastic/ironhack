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
	def add_ingredient
		sandwich = Sandwich.find(params[:id])
		ingredient = Ingredient.find_by(id: params[:ingredient_id])
		# SandwichIngredient.create(sandwich_id: params[:id], ingredient_id: params[:ingredient_id])
		sandwich.ingredients.push(ingredient)
		all_ingredients = sandwich.ingredients
		cal_total = all_ingredients.reduce(0) do |sum, x|
			sum + x.calories
		end
		# sandwich.total_calories += ingredient.calories
		sandwich.total_calories = cal_total
		sandwich.save
		render json: sandwich
	end
	def remove_ingredient
		sandwich = Sandwich.find(params[:id])
		ingredient = Ingredient.find_by(id: params[:ingredient_id])
		sandwich.ingredients.delete(ingredient)
	end
	private
	def sandwich_params
		params.require(:sandwich) .permit(:name, :bread_type, :total_calories)
	end
end