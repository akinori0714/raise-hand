class ChatsController < ApplicationController

  before_action :set_community

  def index
    @chat = Chat.new
    @chats = @community.chats.includes(:user)
  end

  def create
    @chat = @community.chats.new(chat_params)
    if @chat.save
      respond_to do |format|
        format.json
      end
    else
      @chats = @community.chats.includes(:user)
      render :index
    end
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
