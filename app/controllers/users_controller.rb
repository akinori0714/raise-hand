class UsersController < ApplicationController

  def create
    @user = User.new(user_params)
    @user.image = "default.png"
  end

  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :image)
  end

end
