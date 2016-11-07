class AsciisController < ApplicationController
	require "artii"
	def new
		render "new"
	end
	def create
		@text = params[:text_inspection][:user_text]
		a = Artii::Base.new :font => 'slant'
		@new_ascii = a.asciify(@text)
		render "art"
	end
end