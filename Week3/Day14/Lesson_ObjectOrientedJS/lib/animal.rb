class Animal
	def initialize(name, breed, sound)
		@name = name
		@breed = breed
		@sound = sound
	end
	def chase
		puts "#{@name} is chasing the cat."
	end
	def bark
		puts @sound
	end
end