class Graph
	def initialize(film)
		@film = film
	end
	def graph_maker
		count = 10
		while count != 0
			print "|"
			@film.each do |m|
				if m.rating.round(0) >= count
					print "#|"
				else
					print " |"
				end
			end
			puts ""
			count -= 1
		end
	end
	def listed_across
		# @film.each do |m|
			# print "|#{m.rating.round(0)}"
		for i in 1..7
			print "|#{i}"
		end
		print "|"
	end
	def listed_vertical
		for n in 1..7
			puts "#{n}. #{@film[n-1].title}"
		end
	end
end