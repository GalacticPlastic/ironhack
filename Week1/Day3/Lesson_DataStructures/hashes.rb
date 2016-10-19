puts ""
puts "Superman sucks."
puts "Batman is my sample hash instead. ;)"
puts ""
# name
# superpowers
# real_name
# city
# comic_company
# rogues_gallery

batman = ["Batman", ["master detective", "wealth"], "Bruce Wayne", "Gotham", "DC", ["Joker", "Catwoman", "Clayface", "The Penguin", "Poison Ivy" "Deadshot", "Killer Croc"]]

puts "Real Name:"
puts "#{batman[2]}"
puts ""
puts "Superhero Name:"
puts "#{batman[0]}"
puts ""
puts "Villains:"
puts "#{batman[6]}"
puts ""
batman = {
	:name => "Batman",			
	:superpowers => ["master detective", "wealth"],
	:real_name => "Bruce Wayne",
	:city => "Gotham",
	:comics_company => "DC",
	:rogues_gallery => ["Joker", "Catwoman", "Clayface", "The Penguin", "Poison Ivy", "Deadshot", "Killer Croc"]
}

# The equals+less than symbol combo is known as a "Hash Rocket".
# :name is known as a "Key".
# The colon character stands signifies a "Symbol".
# A symbol is a more efficient version of a string, WITHOUT SPACES.

batman[:rogues_gallery]

puts "Real Name: #{batman[:real_name]}"
puts "Superhero Name: #{batman[:name]}"
puts "Villains: #{batman[:rogues_gallery]}"
puts ""

puts "**------- Hash Example -------**"
superheroes = [0, 1, 2, { :allies => [0, 1, { :superpowers => [0, { :name => "teleportation"}] }] }]
p superheroes[3][:allies][2][:superpowers][1][:name]
# => "teleportation
puts ""

puts "**----- Hash Exercise #1 -----**"
hash = { :wat => [0, 1, { :wut => [0, [[0, 1, 2, 3, 4, 5, 6, 7, 8, { :bbq => "corn on the cob"}], 1]]}]}
p hash[:wat][2][:wut][1][0][9][:bbq]
# => "corn on the cob"

puts ""
puts "**----- Hash Exercise #2 -----**"
arr = [[0, 1, 2, 3, 4, { :secret => { :unlock => [0, "Why Isn't this Working?!"]}}]]
p arr[0][5][:secret][:unlock][1]
# => "Why Isn't this Working?!"
puts ""
puts ".."
puts "....."
puts "........"
puts ""
puts "I guess it is... HUZZAH!"
puts ""