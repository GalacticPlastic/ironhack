class Ingredient < ApplicationRecord
	has_many :sandwich_ingredients
	has_many :sandwiches, through: "sandwich_ingredients"
end