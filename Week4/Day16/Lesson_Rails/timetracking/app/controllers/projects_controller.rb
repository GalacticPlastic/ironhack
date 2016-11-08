class ProjectsController < ApplicationController
	def index
		@projects = Project.order(created_at: :desc) .limit(10) #.where.not(descript: nil) <-- Removes No. 7 completely. No bueno?
		render 'index'
	end
end