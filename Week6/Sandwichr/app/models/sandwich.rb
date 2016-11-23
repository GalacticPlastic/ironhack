class Sandwich < ApplicationRecord
	has_many :sandwich_ingredients
	has_many :ingredients, through: "sandwich_ingredients"
	def update_calories
		new_total = self.ingredients.reduce(0) do |sum, new_ingredient|
			sum + new_ingredient.calories
		end
		self.update(total_calories: new_total)
		# Fancy version of:
		# self.total_calories = new_total
		# self.save

		# Refactoring of:
		# new_total = 0
		# self.ingredients.each do |new_ingredient|	# => sandwich.ingredients.each do |new_ingredient|
		# 	new_total += new_ingredient.calories
		# end
		# self.total_calories = new_total			# => sandwich.total_calories = new_total
		# self.save									# => sandwich.save
	end
end