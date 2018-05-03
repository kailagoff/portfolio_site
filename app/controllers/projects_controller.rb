class ProjectsController < ApplicationController

  def index
    @projects = Project.order(:project_name)
  end

  def new
   @project = Project.new
  end

  def show
    @project = Project.find(params[:id])
    respond_to do |format|
      format.html { redirect_to project_path }
      format.js
    end
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      flash[:notice] = "Your project has been saved."
      redirect_to root_path
    else
      flash[:notice] = "Something went wrong. Please try again."
      render :new
    end
  end


  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    if @project.update(project_params)
      flash[:notice] = "Your projects have been updated."
      redirect_to project_path(@project)
    else
      flash[:notice] = "Something went wrong. Please try again."
      render :edit
    end
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to projects_path
  end

  private
  def project_params
    params.require(:project).permit(:project_name, :project_link, :image)
  end
end
