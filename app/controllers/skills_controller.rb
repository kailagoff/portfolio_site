class SkillsController < ApplicationController

  def index
    @skills = Skill.all
  end

  def new
   @skill = Skill.new
  end

  def show
    @skill = Skill.find(params[:id])
  end

  def create
    @skill = Skill.new(skill_params)
    if @skill.save
      flash[:notice] = "Your skill has been saved."
      redirect_to root_path
    else
      flash[:notice] = "Something went wrong. Please try again."
      render :new
    end
  end


  def edit
    @skill = Skill.find(params[:id])
  end

  def update
    @skill = Skill.find(params[:id])
    if @skill.update(skill_params)
      flash[:notice] = "Your skills have been updated."
      redirect_to skill_path(@skill)
    else
      flash[:notice] = "Something went wrong. Please try again."
      render :edit
    end
  end

  def destroy
    @skill = Skill.find(params[:id])
    @skill.destroy
    redirect_to skills_path
  end

  private
  def skill_params
    params.require(:skill).permit(:skill_name, :skill_description, :image)
  end
end
