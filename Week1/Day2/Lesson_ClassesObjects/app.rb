require_relative("lib/user.rb")
require_relative("lib/car.rb")
puts ""
puts "#---------------- User Class Exercise ----------------#"
mary = User.new("Mary", "emau757@gmail.com", 29, "Hispanic", "Female")
mary.login
mary.greet
puts ""

nizar = User.new("Nizar", "nizar@example.com", 38, "ambiguous", "Male")
nizar.login
nizar.greet

puts ""

jose = User.new("Jose", "jose@example.com", 36, "ambiguous", "Male")
jose.login
jose.greet
puts ""
puts "Jose has discovered the Fountain of Youth!"
jose.age = 25
jose.greet

puts ""
puts "#----------------- Car Class Exercise ----------------#"
puts ""

mustang = Car.new("Ford", "Mustang", 2014, "red", "Vrooooooom! Vroom, VROOOM!")
mustang.rev_engine

puts ""

f150 = Car.new("Ford", "F150", 2005, "gold", "Broom.")
f150.rev_engine

puts ""

pilot = Car.new("Honda", "Pilot", 2011, "black", "Prrrrrr...")
pilot.rev_engine

puts ""

firebird = Car.new("Pontiac", "Firebird", 1972, "black", "BROOOOOOM!")
firebird.rev_engine

p firebird
puts firebird.color

# puts ""
# puts "#----------------- Class Method ----------------#"
# puts ""

# User.do_stuff

Car.blah

# make, model, year, color, sound

# Whatever is in front of .new has to match the name of the class!
# Indentation Conventions: Tabbing is your friend. Like CSS/HTML!
# Refactoring is moving/organizing things without breaking the code.
# Calling Class.new is actually calling the Initialize method of the class.

#Without attribute accessor, you can only access the class METHODS:
# which are initialize, login and greet
# THAT'S RIGHT, BITCHES! DESIGN IS IMPORTANT, WHAT WHATTTT

