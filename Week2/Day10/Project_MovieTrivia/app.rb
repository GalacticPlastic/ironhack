require "bundler/setup"
require "sinatra"
require "sinatra/reloader" if development?
require "imdb"
require_relative("lib/search.rb")

get "/" do
	erb :home
end

get "/search_results" do
	new_search = Imdb::Search.new(params[:new_search])
	@movies = new_search.movies.shuffle
	erb :results
end



# => Usable Gem methods:
# .poster()
# .year()
# .cast_member_ids()
# .cast_members()


# Iteration 1:
# Return 9 movies that match search term.

# Iteration 2:
# Method to filter out no poster movies (Must QC).
# Terminate loop search at 15 titles.

# Iteration 3:
# JS yay/nay on poster click.

# Iteration 4:
# Return error if < 2 results for search term.

# Bonus:
# Ask user which movie has a certain actor