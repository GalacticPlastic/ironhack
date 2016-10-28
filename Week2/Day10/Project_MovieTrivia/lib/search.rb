class ReturnMovies
	def search_results(matching_films)
		imdb_array = []
		matching_films.each do |the_film|
			the_search = Imdb::Search.new(the_film)
			result = the_search.movies[0..9]
			imdb_array.push(result)
		end
		imdb_array
	end
end