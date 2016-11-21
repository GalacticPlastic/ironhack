class Sandwich < ApplicationRecord
	has_many :sandwich_ingredients
	has_many :ingredients, through: "sandwich_ingredients"	
end