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
		@my_entry = @my_project.time_entries.new(entry_params)
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

		if @my_entry.update(entry_params)
			redirect_to project_time_entries_path(@my_project)
		else
			render :edit
		end 
	end
	private
	def entry_params
		# returns pre-sanitized hash from form fields:
		# .require needs the first :entry in brackets to be placed in its parantheses.
		# .permit needs the second :entry in brackets to be placed in its parantheses.
		params.require(:time_entry).permit(:hours, :minutes, :date, :comment)
	end
	# def destroy
	# 	@my_project = Project.find(params[:project_id])
	# 	@my_entry = @my_project.time_entries.destroy()
	# 	render :destroy
	# end
end