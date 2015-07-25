class ProjectsController < ApplicationController
  def index
    @projects = Project.all

    respond_to do |format|
      format.html
      format.js
    end
  end

  def new
    @project = Project.new
    @project.start_date = Date.today + 1.day
    @project.end_date = Date.today + 14.days
  end

  def show
    @project = Project.find(params[:id])
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

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    @project.update_attributes(project_params)
    if @project.save
      flash[:notice] = "Successfully updated the #{@project.name} project"
      redirect_to @project
    else
      flash[:alert] = "There was an error updating #{@project.name}"
      render :edit
    end
  end

  private
  def project_params
    params.require(:project).permit(:name, :description, :start_date, :end_date,
      :goal, rewards_attributes: [:id, :name, :description, :amount, :limit, :_destroy])
  end
end
