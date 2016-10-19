# You can put data structures inside of other data structures, infinitely!
# Arrays inside hashes
# Hashes inside Arrays
# Instances of objects inside of arrays inside of arrays
# Nested data structures # => russian dolls

# All the behavior of whatever is nested is still the same.
# What changes is how you reference/access it.

puts "**----- Example: Array of Strings -----**"
arr = [
	"Thing #0", "Thing #1", "Thing #2", "Thing #3", "Thing #4"
]
puts arr[2]			# => puts Thing #2
puts arr[2].size	# => 8
puts arr[2].upcase	# => "THING #2"

# Must learn to extrapolate. Recognize that each element in the array above is a string.

puts "**----- Example: Array of an Array of Strings and Integers -----**"
arr = [
	["a", "b", "c"],							# => O Index
	["1", "", ""],								# => 1 Index
	["pizza", "asparagus", "chicken wings"],	# => 2 Index
	["coffee", "tea", "cola"],					# => 3 Index
]

p arr[2]			# => ["pizza", "asparagus", "chicken wings"]
p arr[2][0]			# => "pizza"
p arr[2][2]			# => "chicken wings"
p arr[2].size		# => 3
p arr[2].reverse	# => ["chicken wings", "asparagus", "pizza"]
p arr[2].each		# => Loop this array

p arr[0]			# => ["a", "b", "c"]

#----- WHOA.

puts "**----- Example: Array of Hashes -----**"
arr = [
	{ :lat => 25, :lng => 80, :name => "Miami" },
	{ :lat => 48, :lng => 2, :name => "Paris" },
	{ :lat => 40, :lng => 3, :name => "Madrid" },
	{ :lat => 18, :lng => 66, :name => "San Juan" },
]

puts arr[2][:name]	# => "Madrid"
puts arr[2][:lat]	# => 40
puts arr[2].empty?	# => false
puts arr[2].invert	# => { 40 => :lat, 3 => :lng, "Madrid" => :name }

puts "**----- Example: Access Hash Items w/Square Brackets and Its Keys -----**"
lemonade_finances = {
	:mon => 20,
	:tue => 15,
	:wed => 5,
	:thu => 9,
	:fri => 17
}
puts lemonade_finances[:mon] - 5	# => 15

#----- No, seriously. WHOOOA.
puts "**----- Example: Hashes inside a Hash!! -----**"
lemonade_finances = {
	:mon => { :revenue => 20, :costs => 5 },
	:tue => { :revenue => 15, :costs => 4 },
	:wed => { :revenue => 5, :costs => 3 },
	:thu => { :revenue => 9, :costs => 3 },
	:fri => { :revenue => 17, :costs => 4 }
}
p lemonade_finances

#When you have a structure, the hash itself does not have a cost or revenue.
# The item within the hash, however, does.
# Structure/container does not have the properties of the individuals within.
puts "**----- Example: Hashes inside a Hash inside a Hash!!! -----**"
lemonade_finances = {
	:mon => { :revenue => 20, :costs => 5, :feedback => ["Good", "Too Sweet"] },
	:tue => { :revenue => 15, :costs => 4, :feedback => ["Meh"] },
	:wed => { :revenue => 5, :costs => 3, :feedback => ["Okay"]},
	:thu => { :revenue => 9, :costs => 3, :feedback => ["The Best"] },
	:fri => { :revenue => 17, :costs => 4, :feedback => [] }
}
puts lemonade_finances[:mon][:feedback][1]	# => "Too Sweet"
puts lemonade_finances[:tue][:feedback][0]	# => "Meh"

puts lemonade_finances.class			# => Hash. Dot Class tells you what class an object is.
puts lemonade_finances[:mon].class 		
puts lemonade_finances[:mon].class

# In Ruby Fixnum is the class for Integers.