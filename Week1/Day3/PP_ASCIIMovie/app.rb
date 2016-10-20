require("imdb")		# Calls installed IMDB gem.
require_relative("lib/movie_array.rb")
require_relative("lib/search.rb")
require_relative("lib/rating.rb")

puts ""
# SPLIT TEXT INTO LINES
filename = ConvertText.new
array_of_movies = filename.movie_reader('lib/movies.txt')

# puts "***--------------- Movie List ---------------***"
# puts ""
# p array_of_movies
# puts ""

#RETURN TITLE & RATING
# puts "***--------- TITLE & RATINGS ----------***"
listfilms = ReturnMovies.new
imdb_objects = listfilms.movie_info(array_of_movies) 

# puts "***--------- TEST GRAPH MAKER ----------***"
mygraph = Graph.new(imdb_objects)
mygraph.graph_maker
puts "---------------"
mygraph.listed_across
puts ""
puts ""
mygraph.listed_vertical

puts ""
# puts "***--------------- Test MovieRating Class ---------------***"
# the_search = Imdb::Search.new(array_of_movies[0])
# first_result = the_search.movies[0]
# puts first_result.title
# puts first_result.rating.round(0)
# listfilms.each do

# puts ""
# puts "***--------------- What The Search Output Should Be ---------------***"
# # movies = ["Star Wars", "The Avengers", "Silicon Valley", "", "", "" ]
# the_search = Imdb::Search.new("Star Wars")

# # The .movies method returns the array that contains the results
# the_search.movies
# first_result = the_search.movies[0]
# puts "Got a total of #{the_search.movies.length} results"
# puts "First Result:"
# puts first_result.title
# puts first_result.rating

# # Need to make a loop to apply the .movies method to the array
# # Don't have to make your own Movie class. Made by gem
# # Ruby Gems are like WordPress Plugins.

# => GOAL OUTPUT:

# | |#|#| | | | | 
# |#|#|#| | | | | 
# |#|#|#| | |#| | 
# |#|#|#| | |#| |
# |#|#|#| | |#| |
# |#|#|#|#| |#| |
# |#|#|#|#|#|#| |
# |#|#|#|#|#|#|#|
# ---------------
# |5|7|0|4|0|5|7|

# 1. Ghostbusters
# 2. Die Hard
# 3. The Godfather
# 4. Home alone
# 5. Star trek, the new generation
# 6. The night of the living dead
# 7. Titanic