class User 							
	attr_writer(:name, :email, :age, :ethnicity, :gender)
	def initialize(name, email, age, ethnicity, gender)
		@name = name
		@email = email
		@age = age
		@ethnicity = ethnicity
		@gender = gender
	end
	def login
		puts "#{@name} is logging in with email: #{@email}."
	end
	def greet
		puts "Howdy! My name is #{@name}."
		puts "I am #{@age} years old."
	end

	# def age=(new_age)
	# 	@age = new_age
	# end

	# Allows you to reassign the instance variable as a method
	# shorthand for this is attr_writer

	# attr_accessor is the combination of attr_reader and attr_writer
end

# Initialize is the constructor method in Ruby.
# It sets up instance variables for objects with multiple attributes.
# Class naming conventions is CamelCase, no underscores, no spaces