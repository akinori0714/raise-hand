class CommunitiesController < ApplicationController

  def index
    @community = Community.all
  end


  def new
    @community = Community.new
  end

  def create
    @community = Community.new(community_params)
    if @community.save
      redirect_to root_path, notice: 'コミュニティを作成しました'
    else
      render :new
    end
  end

  def show
  end

  private
  def community_params
    params.require(:community).permit(:name, :image, :explain, heuser_ids: [])
  end
  
end