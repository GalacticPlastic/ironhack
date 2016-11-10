class TimeEntriesController < ApplicationController
	def index
		@my_project = Project.find(params[:project_id])
		@my_entries = @my_project.time_entries
		render :index
	end
	def new
		@my_project = Project.find(params[:project_id])
		@my_entry = @my_project.time_entries.new
		render :new
	end
	def create
		@my_project = Project.find(params[:project_id])
		@my_entry = @my_project.time_entries.new(
			:hours => params[:time_entry][:hours],
			:minutes => params[:time_entry][:minutes],
			:date => params[:time_entry][:date],
			:comment => params[:time_entry][:comment]
		)
		if @my_entry.save
			redirect_to project_time_entries_path(@my_project)		# "/projects/#{@my_project.id}/time_entries"
		else
			render :new
		end
	end
	def edit
		@my_project = Project.find(params[:project_id])
		@my_entry = @my_project.time_entries.find(params[:id])
		render :edit
	end
	def update
		@my_project = Project.find(params[:project_id])
		@my_entry = @my_project.time_entries.find_by(id: params[:id])

		if @my_entry.update(
				:hours => params[:time_entry][:hours],
				:minutes => params[:time_entry][:minutes],
				:date => params[:time_entry][:date],
				:comment => params[:time_entry][:comment]
			)
			redirect_to project_time_entries_path(@my_project)
		else
			render :edit
		end 
	end
	# def destroy
	# 	@my_project = Project.find(params[:project_id])
	# 	@my_entry = @my_project.time_entries.destroy()
	# 	render :destroy
	# end
end