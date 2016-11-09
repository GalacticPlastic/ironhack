class ProjectsController < ApplicationController
	def index
		@projects = Project.order(created_at: :desc) .limit(10) #.where.not(descript: nil) <-- Removes No. 7 completely. No bueno?
		render 'index'
	end
	def show
		@my_project = Project.find(params[:id])
		render 'show'
	end
	def new
		@my_project = Project.new
		render 'new'
	end
	def create
		@my_project = Project.new(
			:name => params[:project][:name],
			:descript => params[:project][:descript]
		)
		@my_project.save
		redirect_to project_prath(@my_project)
	end
	# def edit
	# 	@my_project = Project.edit()
	# end
	# def update
	# 	@my_project = Project.update()
	# end
	# def destroy
	# 	@my_project = Project.destroy()
	# end
end