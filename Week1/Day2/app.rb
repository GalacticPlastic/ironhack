class User 							# Class naming conventions is CamelCase, no underscores, no spaces
	def login
		puts "User is logging in."
	end
	def greet
		puts "Howdy!"
	end
end

first_user = User.new 				# Whatever is in front of .new has to match the name of the class!

first_user.login 					# Indentation Conventions: Tabbing is your friend. Like CSS/HTML!
first_user.greet


class Car
	def rev
		puts "Vrooooooom! Vroom, VROOOM!"
	end
end

red_car = Car.new
red_car.rev