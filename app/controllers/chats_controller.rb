class ChatsController < ApplicationController

  before_action :set_community

  def index
    @chat = Chat.new
    @chats = @community.chats.includes(:user)
  end

  def create
    @chat = @community.chats.new(chat_params)
  end

  def new
  end

  private

  def chat_params
    params.require(:chat).permit(:content, :image).merge(user_id: current_user.id)
  end

  def set_community
    @community = Community.find(params[:community_id])
  end

end