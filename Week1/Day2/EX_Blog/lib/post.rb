class Post
	attr_accessor(:title, :date, :text, :author)
	def initialize(title, date, text, author)
		@title = title
		@date = date
		@text = text
		@author = author
	end
	def print
		puts "#{@title}"
		puts "Posted on #{@date} by #{@author}."
		puts "*******************************************************"
		puts "#{@text}"
		puts "-------------------------------------------------------"
	end
end