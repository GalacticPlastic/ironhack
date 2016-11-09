class TimeEntriesController < ApplicationController
	def index
		@my_project = Project.find(params[:id])
		@my_entries = @my_project.time_entries
		render 'index'
	end
	# def new
	# 	@my_entries = Project.new
	# 	render 'new'
	# end
	# def create
	# 	@my_entries = Project.new(
	# 		:name => params[:][:],
	# 		:descript => params[:][:]
	# 	)
	# 	@my_entries.save
	# 	redirect_to project_path(@my_entries)
	# end
end