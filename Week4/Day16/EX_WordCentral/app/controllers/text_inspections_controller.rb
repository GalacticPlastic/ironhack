class TextInspectionsController < ApplicationController
	def new
		render "new"
	end
	def create
		@text = params[:text_inspection][:user_text]
		input = @text.split(" ")
		@word_count = input.length
		@read_time = (@word_count.to_f * (60.0 / 275)).round(2)
		unsorted = {}													# Could also have used unsorted = Hash.new(0)
		input.each do |word|
			if unsorted[word] == nil 
				unsorted[word] = 1
			else
				unsorted[word] += 1
			end
		end
		# Cleaner Method:
		# unsorted = Hash.new(0)
		# input.each do |word|
		# 	unsorted[word] += 1
		# end

		@frequency = unsorted.sort_by { |word, count| -count }[0..9]	# Could also have used .first(10) instead of [0..9]
		render "results"
	end
	def generator
		
		render "lipsum"
	end
end