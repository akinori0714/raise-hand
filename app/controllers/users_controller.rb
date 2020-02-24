class UsersController < ApplicationController

  def index
    @users = User.where.not(id: current_user.id)
    @users = User.paginate(page: params[:page], per_page: 20)
    @parents = Category.where(ancestry: nil)

    if params[:q] && params[:q].reject { |key, value| value.blank? }.present?
      @q = User.ransack(search_params, activated_true: true)
      @title = "Search Result"
    else
      @q = User.ransack(activated_true: true)
      @title = "All users"
    end
  end

  def new
    @categorys = Category.where(ancestry: nil)
  end

  def create
    @user.image = "default_icon.jpg"
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

  def show
    @user = User.find(params[:id])
  end

  def category
    @category = Category.find(params[:id])
    @categorys = @category.children
    respond_to do |format|
      format.json
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end

  def search_params
    params.require(:q).permit(:name_cont)
  end

end