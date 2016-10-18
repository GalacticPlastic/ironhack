class Home
  attr_reader(:name, :city, :capacity, :price)
  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end

homes = [
  Home.new("Danielle's place", "Davie", 2, 42),
  Home.new("Connie's place", "Davie", 5, 47),
  Home.new("Mary's place", "Dania", 3, 41),
  Home.new("Jose's place", "Davie", 2, 45),
  Home.new("Kim's place", "Dania", 4, 49)
]

# puts homes[0].name
# puts homes[1].name
# puts homes[2].name
# puts homes[3].name
# puts homes[4].name

def homes_info(homes)
  homes.each do |hm|
    puts "#{hm.name} is in #{hm.city}"
    puts "Price: $#{hm.price} a night."
  end
end

puts "*------------ Exercise: Each ----------*"
homes_info(homes)
cities = homes.map do |hm|
	hm.city
end

puts "*----- Transforming Arrays w/Map ------*"
puts cities
# puts "*---- Old Homes Array Still Intact ----*"
# puts homes

puts "*------------ Exercise: Map -----------*"
home_prices = homes.map do |hm|
	hm.price
end
puts home_prices

puts "*--------- Average Price w/Each --------*"
average_price = 0.0
homes.each do |hm|
	average_price += hm.price
end

puts "The average price is: $#{average_price / homes.length}."

puts "*--------- Average Capacity w/Each --------*"
average_capacity = 0.0
homes.each do |hm|
	average_capacity += hm.capacity
end

puts "The average capacity is: #{average_capacity / homes.length}."

puts "*--------- Accumulating w/Reduce --------*"
total_capacity = homes.reduce(0.0) do |sum, hm|
	puts "Total Capacity: #{sum}"
	puts "Home Capacity: #{hm.capacity}"
	puts "---------------------"
	sum + hm.capacity
end
puts "The total capacity is: #{total_capacity}."
puts "The average capacity is: #{total_capacity / homes.length}."

puts "*------- Average Price w/Reduce ------*"
total_price = homes.reduce(0.0) do |sum, hm|
	puts "Total Price: $#{sum}"
	puts "Home Price: $#{hm.price}"
	puts "---------------------"
	sum + hm.price
end
puts "The total price is: $#{total_price}."
puts "The average price is: $#{total_price / homes.length}."

puts "*----------- Each w/Index -----------*"
homes.each_with_index do |hm, index|
  puts "Home Number #{index + 1}: #{hm.name}"
end

puts "*---------- Select Method ----------*"
######## Debugging Output ########
def homes_array(homes)
  homes.each do |hm|
    puts "Home.new('#{hm.name}', '#{hm.city}', #{hm.capacity}, #{hm.price})"
  end
end
##################################
# Homes in Davie
davie_homes = homes.select do |hm|
  # Keep hm only if its city is "Davie"
  hm.city == "Davie"
end
# davie_homes array ends up looking like:
# davie_homes = [
  # Home.new("Danielle's place", "Davie", 2, 42),
  # Home.new("Connie's place", "Davie", 5, 47),
  # Home.new("Jose's place", "Davie", 2, 45),
# ]
puts "davie_homes = ["
homes_array(davie_homes)
puts "]"

puts "*------ Select High Capacity ------*"
# Homes with capacity 4 or more
high_capacity_homes = homes.select do |hm|
  # Keep hm only if its capacity is 4 or greater
  hm.capacity >= 4
end
# high_capacity_homes array ends up looking like:
# high_capacity_homes = [
#   Home.new("Connie's place", "Davie", 5, 47),
#   Home.new("Kim's place", "Dania", 4, 49)
# ]
puts "high_capacity_homes = ["
homes_array(high_capacity_homes)
puts "]"

puts "*------------- Find -------------*"
home_41_dollars = homes.find do |hm|
  # Is hm's price $41?
  hm.price == 41
end

puts "The first home that costs $41 is:"
puts home_41_dollars.name


# for pos in 0..100
#   puts homes[pos].name
# end

#This is an array iteration
# A parameter is set between pipe operators, instead of parantheses||