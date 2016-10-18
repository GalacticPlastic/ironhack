# for x in 1..100				# for in loop best for numbers
# 	puts x
# end

# heroes_array = ["Batman", "Green Lantern", "Superman","The Flash","Cyborg", "Wonder Woman","Aquaman"]
# i = 0
# Works, but not the best approach
# while i < heroes_array.length
# 	puts heroes_array[i].upcase + "!"
# 	i = i + 1
# end

# The Better Way:
# heroes_array.each do |x|	# Don't start with "For". Each is an array method.
# 	puts x.upcase + "!"
# 	puts "Amount of characters: #{x.length}"
# 	puts "------"
# end

# # Alternate One-Line Shorthand Block
# heroes_array.each { |x| puts x.upcase + "! " }	#block can open/close with do/end or {} IF One Condition ONLY!


ironhackers = ["Sarah", "Chenje", "Mark"]

ironhackers.each do |classmate|
	puts "Good morning, #{classmate}, my fellow Ironhacker!"
end