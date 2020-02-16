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
      redirect_to root_path, notice: 'コミュニティを作成しました'
    else
      render :new
    end
  end

  def show
    @project = Project.find(params[:id])
  end

  private
  def project_params
    params.require(:project).permit(:name, :image, :explain, :chachcopy, :url, :area, :recruitamount, :recruitperson, :jointype, :reward, user_ids: [])
  end

end
