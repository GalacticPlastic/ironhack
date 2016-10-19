class ConvertText
	def movie_reader(filename)
		text = File.read(filename)
		movie_list = text.split("\n")
		movie_list
	end
end


#create a class w/class name and method

