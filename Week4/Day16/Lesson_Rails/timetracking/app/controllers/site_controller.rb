class SiteController < ApplicationController
	def home
		render 'home' # name of view template
	end
	def about
		render 'about'
	end
	def contact
		render 'contact'
	end
	def say_name
		@name = params[:name]
		render 'say_name'
	end
end