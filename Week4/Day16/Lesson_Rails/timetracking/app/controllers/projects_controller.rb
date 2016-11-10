class ProjectsController < ApplicationController
	def index
		@projects = Project.order(created_at: :desc) .limit(10) #.where.not(descript: nil) <-- Removes No. 7 completely. No bueno?
		render :index
	end
	def show
		@my_project = Project.find(params[:id])
		render :show
	end
	def new
		@my_project = Project.new
		render :new
	end
	def create
		@my_project = Project.new(entry_params)
		@my_project.save
		redirect_to project_path(@my_project)
	end
	def edit
		@my_project = Project.find(params[:id])
		render :edit
	end
	def update
		@my_project = Project.find(params[:id])
		if @my_project.update(entry_params)
			redirect_to project_path(@my_project)
		else
			render :edit
		end
	end
	def entry_params
		params.require(:project).permit(:name, :descript)
	end
	# def destroy
	#	@my_project = Project.find(params[:id])
	# 	@my_project = Project.destroy()
	# 	render :destroy
	# end
end