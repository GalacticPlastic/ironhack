class TextInspectionsController < ApplicationController
	def new
		render "new"
	end
	def create
		@text = params[:text_inspection][:user_text]
		input = @text.split(" ")
		@word_count = input.length
		@read_time = @word_count.to_f / 275
		unsorted = {}
		input.each do |word|
			if unsorted[word] == nil 
				unsorted[word] = 1
			else
				unsorted[word] += 1
			end
		end
		@frequency = unsorted.sort_by { |word, count| -count }[0..9]
		render "results"
	end
	def lipsum

	end
end