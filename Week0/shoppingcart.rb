require 'date'
class ShoppingCart
	def initialize
		@items = [ ]
	end
	def add_item(item)
		@items.push(item)
	end
	def checkout
		total = 0
		@items.each do |item|
			total += item.price
			if @items.count > 5
				total = (total*0.90)
			end
		end
		total
	end
end
class Item 
	attr_accessor :price, :name
	def initialize(name, price)
		@name = name
		@price = price
	end
end
class Houseware < Item
	def price
		price_of_item = @price
		if @price > 100
			price_of_item = (@price*0.95)
		end
		price_of_item
	end
end
class Fruit < Item
	def price
		price_of_item = @price
		#How do I require/specify 'date' or .wday
		if Date.today.saturday? || Date.today.sunday?
		# if Date.wday == 6 || Date.wday == 0			#Saturday and Sunday
			price_of_item = (@price*0.90)
		end
		price_of_item
	end
end

neworder = ShoppingCart.new
banana = Fruit.new("Banana", 10)
oj = Item.new("Orange Juice", 10)
rice = Item.new("Rice", 1)
vaccuum = Houseware.new("Vaccuum", 150)
anchovies = Item.new("Anchovies", 2)
lamp = Item.new("Lamp", 10)

neworder.add_item(banana)		#  10
neworder.add_item(oj)			#  10
neworder.add_item(rice)			#   1
neworder.add_item(vaccuum)		# 150 - 5% = 142.5
neworder.add_item(anchovies)	#   2
neworder.add_item(lamp)			#  10
puts "Your total today is $#{neworder.checkout}. Have a nice day!"
# Your total today is $153.50. Have a nice day!  Total should be $175.5 - 10% ($17.55) = $157.95