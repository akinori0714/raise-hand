class ScoutsController < ApplicationController

  def index
    @users= User.all
  end

end
