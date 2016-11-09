class TimeEntriesController < ApplicationController
	def index
		@my_project = Project.find(params[:project_id])
		@my_entries = @my_project.time_entries
		render 'index'
	end
	def new
		# @new_entry = @my_entries.new
		render 'new'
	end
	def create
		# @new_entry = @my_entries.new(
		# 	:name => params[:][:],
		# 	:descript => params[:][:]
		# )
		# @new_entry.save
		# redirect_to project_path(@my_entries)
	end
end