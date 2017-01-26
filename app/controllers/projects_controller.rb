class ProjectsController < ApplicationController
	def index
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
			#display other notice
		end
	end

	def show
		@project = Project.find(params[:id])
	end

	private 

	def project_params
		params.require(:project).permit(:website, :keyword)
	end
end
