class MypagesController < ApplicationController

  def index
    @jointype = current_user.jointype.split(',').map { |m| m.delete('[]"\\\\')}
    @jointypes = @jointype.join("　")

    @wanttodo = current_user.want_to_do.split(',').map { |m| m.delete('[]"\\\\')}
    @wanttodos = @wanttodo.join("　")

    @wanttomeet = current_user.want_to_meet.split(',').map { |m| m.delete('[]"\\\\')}
    @wanttomeets = @wanttomeet.join("　")
  end

  def show
  end

end
