class ProjectsController < ApplicationController
	def index
		@projects = Project.all
	end

	def new
		@project = Project.new
	end

	def create
		@project = Project.new(project_params)

		if @project.save
			flash[:notice] = "New Project created."
			redirect_to @project
		else
			flash[:alert] = "Didn't create the Project."
			render "new"
		end
	end

	def show
		@project = Project.find(params[:id])
	end

	def destroy
		@project = Project.find(params[:id])
		@project.destroy

		flash[:alert] = "Project just got deleted."
		redirect_to projects_path
	end

	private 

	def project_params
		params.require(:project).permit(:website, :keyword)
	end
end
