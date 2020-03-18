class MypagesController < ApplicationController

  def index
    @jointype = current_user.jointype.split(',').map { |m| m.delete('[]"\\\\')}
    @jointypes = @jointype.join("　")
  end

  def show
  end

end
