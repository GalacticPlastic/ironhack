heroes_array = ["Batman", "Green Lantern", "Superman","The Flash","Cyborg", "Wonder Woman","Aquaman"]

# total_lengths = 0
# heroes_array.each do |x|
# 	total_lengths += x.length					#Same as total_lengths = total_lengths + x.length
# end
# puts total_lengths.to_f / heroes_array.length	#Look up "To Float" .t_f

#------------------------------------------------------------------------------------------------------#

total_lengths = heroes_array.reduce(0) do |sum, x|
	# puts "Sum: #{sum}"
	# puts "X: #{x}"
	# puts "X length: #{x.length}"
	# puts "Result this Round: #{sum + x.length}"
	# puts "---------------------"
	# sleep 2
	sum + x.length
end

puts "FINAL RESULT: #{total_lengths}"
puts "AVERAGE: #{total_lengths.to_f / heroes_array.length}"

[1].reduce { |sum, x| sum + x }
#Numbers in the bracket is the first value of sum, NOT the position!

i = 0
["a", "b", "c"].each do |x|
	puts "[#{{i}} #{{x}}"
	i += 1
end

#-------------- SELECT --------------#
[5,2,3].select { |x| x.odd? }


#-------------- GREP --------------#
["casa", "masa", "pepino"].grep(/as/)


#-------------- FIND --------------#
[5,2,3].find { |x| x.odd? }		# Find only returns the first result.
# Returns only 5

#-------------- SORT --------------#
[1,2,3].sort
# Variant:
[banana, rice, anchovies].sort_by { |i| i.price }