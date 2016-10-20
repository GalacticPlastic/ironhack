require_relative("lib/caffeine_consumer.rb")
require_relative("lib/payable.rb")
require_relative("lib/programmer.rb")
require_relative("lib/designer.rb")
puts ""
nizar = Programmer.new
nizar.program
puts ""
puts ""
mary = Designer.new
mary.design
puts ""

####################### NOTES #######################
# Working Together Better vs. Working Together Worse

# Coupling:
# When objects are too tightly coupled, they become too dependent.
# Making programming tedious programming.

# Good programming means easy, independent modifications.

# class Car
# 	def initialize(sound)
# 		@sound = sound
# 		@cities = []
# 	end
# 	def cities
# 		@cities
# 	end
# end

#---- Sample App.rb File ----------#
# first_car = Car.new("Broom")
# first_car.cities.push "Gijon"	#hashes don't have a push method
# 								#assumes Car class saves cities as an array
# puts first_car.cities


# Trainwreck:
# Poor designed object calls to many methods at once.

# Code Smell:
# When you see bad signs in code that lead to maintenance hell!

# Ex:
# client.mortgage.payments.etc.etc

# Cohesion:
# The degree to which the elements of a module belong together.
# Methods of a single class should be directly related.

# Relationship Types:
# ----------------------------
# => Inheritance
	 # => More specific version of a broader class you already have.
	 # class KaraokeSong < Song
	 	# => Redefining a method in a child class overwrites same method in parent.
# => Mixins
	 # => Modules
# => Composition/Collaboration
	 # => When an object (larger class) achieves its behavior by containing another object
	 class Car
	 	# def initialize
	 	# 	@engine = Engine.new
	 	# end
	 	# def start
	 	# 	@engine.move_pistons
	 	# end
	 	def start
	 		Engine.new.move_pistons
	 	end
	end
	class Engine
		def move_pistons
			puts "Pshhhhh"
		end
	end
	# Dependency Injection:
	class Car
	 	def initialize(engine)
	 		@engine = engine
	 	end
	 	def start
	 		@engine.move_pistons
	 	end
	end
	class Engine
		def move_pistons
			puts "Pshhhhh"
		end
	end

# ********** COMPOSITION preferred over INHERITANCE ********** #
# => Duck Types
# If it walks like a duck, and talks like a duck, its a duck!
class Duck
	def walk
		"waddle"
	end
	def talk
		"quack"
	end
end
class DuckCosplayer
	def walk
		"human waddle"
	end
	def talk
		"quackity"
	end
end

ducks = [Duck.new, DuckCosplayer.new]
ducks.each do |duck|
	puts duck.talk
end

# Doesn't matter that the classes are different,
# Because their methods are the same.
# The only difference is parentage, but that doesn't matter either.

# ------- Cheatsheet for Choosing a Relationship:  ------- #
# => INHERITANCE for Is-A
# => MIXINS for Is-Able-To
# => DUCK TYPES for Behaves-Like-A
# => COMPOSITION for Has-A

# Rule of 3 (If you have to do 3 times, its time to refactor.)





