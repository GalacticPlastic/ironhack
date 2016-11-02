require_relative("lib/country_counter.rb")
countries = [ "Puerto Rico", "Puerto Rico", "USA", "USA", "USA", "USA", "USA", "Nicaragua", "France", "Zimbabwe", "Mongolia", "Argentina", "Cuba", "Cuba", "Cuba", "Cuba", "Nigeria", "Haiti" ]
diversity = CountryCounter.new
puts ""
p diversity.nationality("USA", countries) == 5
p diversity.nationality("Puerto Rico", countries) == 2
p diversity.nationality("Cuba", countries) == 4
p diversity.nationality("Nicaragua", countries) == 1
p diversity.nationality("Japan", countries) == 0
puts ""
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