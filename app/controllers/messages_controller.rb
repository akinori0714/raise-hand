class MessagesController < ApplicationController

  def index
    @articles = Article.limit(3)
    @communities = Community.limit(3)
    @projects = Project.limit(3)
    @users = User.limit(20)
  end

end
