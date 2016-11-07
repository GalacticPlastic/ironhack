class TextInspectionsController < ApplicationController
	def new
		render "new"
	end
	def create
		@text = params[:text_inspection][:user_text]
		@word_count = @text.split(" ").length
		@read_time = @word_count.to_f / 275
		render "results"
	end
end