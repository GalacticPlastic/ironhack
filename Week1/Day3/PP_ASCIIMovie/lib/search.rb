class ReturnMovies
	def movie_info(array_of_movies)
		imdb_array = []
		array_of_movies.each do |name|
			the_search = Imdb::Search.new(name)
			result = the_search.movies[0]
			imdb_array.push(result)
		end
		imdb_array
	end
end