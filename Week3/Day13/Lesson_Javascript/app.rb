def nationality(nation, array)
	counter = 0
	array.each do |total_students|
		if total_students == nation
			counter += 1
		end
	end
	counter 		# Return Result AFTER Loop
end
countries = [
	"Puerto Rico", "Puerto Rico",
	"USA", "USA", "USA", "USA", "USA",
	"Nicaragua",
	"France",
	"Zimbabwe",
	"Mongolia",
	"Argentina",
	"Cuba", "Cuba", "Cuba", "Cuba",
	"Nigeria",
	"Haiti"
]
puts ""
puts "This Ironhack cohort comes from all over the world, including the following countries:"
puts "--------------------------------------------------------------------------------------"
countries.each do |country|
	puts " - #{country}!"
end
puts ""
angry_nations = countries.map do |country|
	country.upcase
end
puts "SO MANY COUNTRIES ARE REPRESENTED IN THIS COHORT!!!!"
puts "----------------------------------------------------"
angry_nations.each do |country|
	puts " - SOME ARE FROM #{country}!!!"
end
puts ""
p nationality("USA", countries) == 5
p nationality("Puerto Rico", countries) == 2
p nationality("Cuba", countries) == 4
p nationality("Nicaragua", countries) == 1
p nationality("Japan", countries) == 0
puts ""