class Car
	attr_reader(:make, :model, :year, :color, :sound)
	def initialize(make, model, year, color, sound)
		@make = make
		@model = model
		@year = year
		@color = color
		@sound = sound
	end
	def rev_engine
		puts "This car is a #{@color} #{@year} #{@make} #{@model}."
		puts "It goes: '#{@sound}'"
	end
	def self.blah
		puts "blah blah"
	end

	# def color
	# 	@color
	# end

	# Example of implicit return
	# Allows you to call the instance variable as a method
	# shorthand for this is attr_reader

	#attr_writer allows you to change the method-version of the instance variable
end