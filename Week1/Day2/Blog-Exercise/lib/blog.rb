class Blog
	attr_accessor(:posts)
	def initialize(posts)
		@posts = posts
	end
	def add_post(new_post)
		@posts.push(new_post)
	end
	def paginate_next
		# 0..2	=> 3..5
		@page_start += 3
		@page_end += 3
	end
	def paginate_previous
		# 6..8	=> 3..5
		@page_start += 3
		@page_end += 3
	end
	def publish_front_page(posts)
		# .length Loop?
		# array.length.times do |single_post|
		# end

		# array.each
		# end
	end
	#---------- PAGINATION -----------#
	
	def paginate_next
		# 0..2	=> 3..5
		@page_start += 3
		@page_end += 3
	end
	def paginate_back

	end
end

# posts.each do |single_post|