class Post
	attr_accessor(:title, :date, :text, :author)
	def initialize(title, date, text, author)
		@title = title
		@date = date
		@text = text
		@author = author
	end
	def publish_front_page
		puts "#{@title}"
		puts "Posted on #{@date} by #{@author}."
		puts "**************"
		puts "#{@text}"
		puts "----------------"
	end
end