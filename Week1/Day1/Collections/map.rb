# added_one = []
# [1,2,3].each do |item|		#Why 1,2,3  ?
# 	added_one.push(item+1)
# end
# added_one
#------------------------------------------------------------------------------------------------------#
# added_one = [1,2,3].map do |item|
# 	item+1
# end
#------------------------------------------------------------------------------------------------------#
# heroes_array = ["Batman", "Green Lantern", "Superman","The Flash","Cyborg", "Wonder Woman","Aquaman"]  .Each method
# lowercase_array = []

# heroes_array.each do |x|
# 	lowercase_array.push(x.downcase)
# end
# puts lowercase_array
#------------------------------------------------------------------------------------------------------#
# heroes_array = ["Batman", "Green Lantern", "Superman","The Flash","Cyborg", "Wonder Woman","Aquaman"]
# lowercase_array = []
# length_array = []
# lowercase_array = heroes_array.map do |character|
# 	character.downcase
# end
# length_array = heroes_array.map do |character|
# 	character.length
# end

# puts "*** ORIGINAL ARRAY ***"
# puts "----------------------"
# puts heroes_array
# puts "----------------------"
# puts lowercase_array
# puts "----------------------"
# puts length_array
#------------------------------------------------------------------------------------------------------#
cities = ["harare", "paris", "camden"]
capitalize = []

capitalize = cities.map do |city_name|
	city_name.capitalize										# .capitalize only capitalizes the first letter of a string.
	# city_name.split(/ |\_|\-/).map(&:capitalize).join(" ")	# .capitalize doesn't work with multiple words.
end																# .titleize works in Rails
puts capitalize