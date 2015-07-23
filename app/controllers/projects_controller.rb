class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
    @project.start_date = Date.today
    @project.end_date = Date.today + 14.days
  end

  def create
    @project = Project.new(project_params)
    @project.owner = current_user
    if @project.save
      flash[:notice] = "Project #{@project.name} successfully created."
      redirect_to projects_url
    else
      flash[:alert] = "Unable to create new project."
      render :new
    end
  end

  def show
    @project = Project.find(params[:id])
  end

  private
  def project_params
    params.require(:project).permit(:name, :description, :start_date, :end_date,
      :goal, rewards_attributes: [:id, :name, :description, :amount, :limit, :_destroy])
  end
end
