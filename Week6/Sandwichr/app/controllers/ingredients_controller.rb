class IngredientsController < ApplicationController
	protect_from_forgery with: :null_session
	def index
		ingredients = Ingredient.all
		render json: ingredients
	end
	def create
		ingredient = Ingredient.create(ingredient_params)
		# Refactored shortcut for:
		# ingredient = Ingredient.new(
		# 	name: params[:ingredient][:name]
		# 	calories: params[:ingredient][:calories]
		# )
		# ingredient.save
		render json: ingredient
	end
	def show
		ingredient = Ingredient.find(params[:id])
		sandwich = ingredient.sandwiches
		render json: ingredient, include: [:sandwiches]
	end
	def update
		ingredient = Ingredient.find(params[:id])
		ingredient.update(ingredient_params)
		render json: ingredient
	end
	def destroy
		ingredient = Ingredient.find(params[:id])
		ingredient.destroy
		render json: ingredient
	end
	private
	def ingredient_params
		params.require(:ingredient) .permit(:name, :calories)
		# Strong parameters in nested fields for sanitizing user input.
	end
end