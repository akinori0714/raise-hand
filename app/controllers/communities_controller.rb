class CommunitiesController < ApplicationController

  def index
    @communities = Community.all
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
    @community = Community.find(params[:id])
    @chat = Chat.new
    @chats = Chat.all
  end

  # def add_user_to_community
  #   @user = User.find(id: current_user.id)
  #   @community = Community.new
  # end

  private
  def community_params
    params.require(:community).permit(:name, :image, :explain, user_ids: [])
  end
  
end