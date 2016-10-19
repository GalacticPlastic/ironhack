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
  Home.new("Danielle's place", "Davie", 2, 45),
  Home.new("Connie's place", "Davie", 5, 65),
  Home.new("Mary's place", "Dania Beach", 4, 50),
  Home.new("Jose's place", "Davie", 2, 35),
  Home.new("Kim's place", "Dania", 3, 50)
]

def homes_info(homes)
  homes.each do |hm|
    puts "#{hm.name} is in #{hm.city}."
    puts "Price: $#{hm.price} a night."
    puts "Capacity: Sleeps #{hm.capacity} guests."
    puts ""
  end
end

#---------------- TextBNB Application Prompt ----------------#
# puts ""
# puts "Welcome to TextBNB!"
# puts "=========================================="
# puts ""

# user_input = nil    #Must define, otherwise will return an undefined variable 'user_input'
# while user_input != "exit"
#   puts "Enter [help] to see available commands or [exit] to exit."
#   puts "What is your selection?"
#   user_input = gets.chomp

#   puts ""
# elsif 
    #--- EVERYTHING!!! ---#
# elsif user_input = "exit"
#   puts "Thank you for visiting TextBNB. Goodbye!"
# end
#---------------- TextBNB Application Prompt ----------------#

puts ""
puts "*-------- Iteration 1: List Homes -------*"
homes_info(homes)

puts "*------ Iteration 2: Sort by Price ------*"
puts "Please select how to sort:"
puts "Sort price from high to low? Enter high."
puts "Sort price from low to high? Enter low."
user_input = gets.chomp
if user_input == "low"
  sorted_homes = homes.sort! do |a,b|
    a.price <=> b.price
  end
  homes_info(sorted_homes)
elsif user_input == "high"
  sorted_homes = homes.sort! do |a,b|
    b.price <=> a.price
  end
  homes_info(sorted_homes)
else
  sorted_homes = homes
end

puts "*----- Iteration 3: Filter by City ------*"
puts "Please enter the city desired:"
city_desired = gets.chomp.downcase
city_homes = homes.select { |the_home| the_home.city.downcase == city_desired }
homes_info(city_homes)

# home_city = []
# home_city = homes.select do |hm|
#   hm.city == city_desired
# end
# if home_city == city_desired
#   puts "Theses are the homes available:"
#   puts "#{homes.name} in #{homes.city}."
# else
#   puts "Sorry, there are no homes available in the city selected."
# end

puts "*------ Iteration 4: Average Price ------*"
total_price = homes.reduce(0.0) do |sum, hm|
  sum + hm.price
end
puts "The average price is: $#{total_price / homes.length}."

puts "*----- Iteration 5: Name Your Price -----*"
user_input = gets.chomp.to_f
matched_home = homes.find { |the_home| the_home.price == user_input }
if matched_home == nil
  puts "Sorry, there are no homes available for #{user_input} a night."
end

# => .to_f Short for 'floating point'. Does decimals.
# => .to_i Short for 'interger'. Whole numbers only.

# => when/case equivalent to if/else

# user_input = gets.chomp.to_i
# if user_input == "35"
#   name_price = homes.find do |hm|
#     hm.price == 35
#   end
#   puts "Theses are the homes available:"
#   homes_info(name_price)
# elsif user_input == "45"
#   name_price = homes.find do |hm|
#     hm.price == 45
#   end
#   puts "Theses are the homes available:"
#   homes_info(name_price)
# elsif user_input == "50"
#   name_price = homes.find do |hm|
#     hm.price == 50
#   end
#   puts "Theses are the homes available:"
#   homes_info(name_price)
# elsif user_input == "65"
#   name_price = homes.find do |hm|
#     hm.price == 65
#   end
#   puts "Theses are the homes available:"
#   homes_info(name_price)
# else
#   puts "Sorry, there are no homes available at that price."
# end