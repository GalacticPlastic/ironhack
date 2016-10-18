class Cart
	def initialize
		@milkshakes = [ ]
	end
	def add_milkshake(milkshake)
		@milkshakes.push(milkshake)
	end
	def total_price_of_shakes
		total = 0
		@milkshakes.each do |milkshake|
			total += milkshake.price_of_milkshake
		end
		total
	end
end

class MilkShake
	def initialize
	    @base_price = 3
	    @ingredients = [ ]    
	end
	def price_of_milkshake
		total_price_of_milkshake = @base_price
		@ingredients.each do |ingredient|
			total_price_of_milkshake += ingredient.price
		end
		#return our total price to whoever called for it
		total_price_of_milkshake
	end
	def add_ingredient(ingredient)
		@ingredients.push(ingredient)
	end
end

class Ingredient
  attr_reader :name, :price
  def initialize(name, price)
      @name = name
      @price = price
  end
end

strawberryshake = MilkShake.new
bananas = Ingredient.new("Bananas", 2)
strawberries = Ingredient.new("Strawberries", 1)
strawberryshake.add_ingredient(bananas)
strawberryshake.add_ingredient(strawberries)

chocolateshake = MilkShake.new
chocolate = Ingredient.new("Chocolate", 2)
brownie = Ingredient.new("Brownies", 3)
chocolateshake.add_ingredient(chocolate)
chocolateshake.add_ingredient(brownie)

tropicalshake = MilkShake.new
mango = Ingredient.new("Mango", 1)
peach = Ingredient.new("Peach", 1)
bananas = Ingredient.new("Bananas", 2)
tropicalshake.add_ingredient(mango)
tropicalshake.add_ingredient(peach)
tropicalshake.add_ingredient(bananas)

berryshake = MilkShake.new
strawberries = Ingredient.new("Strawberries", 1)
blueberries = Ingredient.new("Blueberries", 1)
raspberries = Ingredient.new("Raspberries", 1)
berryshake.add_ingredient(strawberries)
berryshake.add_ingredient(blueberries)
berryshake.add_ingredient(raspberries)

strawberryshake.price_of_milkshake
chocolateshake.price_of_milkshake
berryshake.price_of_milkshake

neworder = Cart.new
neworder.add_milkshake(berryshake)
neworder.add_milkshake(tropicalshake)
neworder.add_milkshake(strawberryshake)
neworder.add_milkshake(chocolateshake)

puts neworder.total_price_of_shakes