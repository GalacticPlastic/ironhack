class SponsoredPost < Post
	# def initialize(title, date, text, author)
	# 	@title = title
	# 	@date = date
	# 	@text = text
	# 	@author = author
	# end 					No need to def initialize because they are all the same as the parent
	def print
		puts "******#{@title}******"
		puts "Posted on #{@date} by #{@author}."
		puts "*******************************************************"
		puts "#{@text}"
		puts "-------------------------------------------------------"
	end
end