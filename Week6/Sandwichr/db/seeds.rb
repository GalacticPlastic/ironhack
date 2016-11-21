# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

sandwich1 = Sandwich.create!(name: "BLT", bread_type: "Rye")
sandwich2 = Sandwich.create!(name: "Publix Ultimate Sub", bread_type: "Whole Wheat")
sandwich3 = Sandwich.create!(name: "Nova and Cream Cheese", bread_type: "Pumpernickel Bagel")
sandwich4 = Sandwich.create!(name: "Publix Chicken Tender Sub", bread_type: "White")
sandwich5 = Sandwich.create!(name: "Tuna", bread_type: "Multigrain")

ingredient1 = Ingredient.create!(name: "Tomato (2 Slices)", calories: 8)
ingredient2 = Ingredient.create!(name: "Lettuce (2 Leafs)", calories: 8)
ingredient3 = Ingredient.create!(name: "Onion (1 Large Slice)", calories: 15)
ingredient4 = Ingredient.create!(name: "Pickle Slices (5)", calories: 5)
ingredient5 = Ingredient.create!(name: "Cream Cheese (2 tbsp)", calories: 98)
ingredient6 = Ingredient.create!(name: "Tuna (1/2 Can)", calories: 62)
ingredient7 = Ingredient.create!(name: "Mayo (1 tbsp)", calories: 94)

SandwichIngredient.create!(sandwich_id: sandwich1.id, ingredient_id: ingredient1.id)
SandwichIngredient.create!(sandwich_id: sandwich1.id, ingredient_id: ingredient2.id)
SandwichIngredient.create!(sandwich_id: sandwich2.id, ingredient_id: ingredient1.id)
SandwichIngredient.create!(sandwich_id: sandwich2.id, ingredient_id: ingredient2.id)