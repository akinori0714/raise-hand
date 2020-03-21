class UsersController < ApplicationController

  def index
    @users = User.where.not(id: current_user.id)
    @users = User.paginate(page: params[:page], per_page: 20).search(params[:search])
    @parents = Category.where(ancestry: nil)
  end

  def new
    @categorys = Category.where(ancestry: nil)
    @skill1s = Skill1.where(ancestry: nil)
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
    @currentUserEntry=Entry.where(user_id: current_user.id)
    @userEntry=Entry.where(user_id: @user.id)
    if @user.id == current_user.id
    else
      @currentUserEntry.each do |cu|
        @userEntry.each do |u|
          if cu.room_id == u.room_id then
            @isRoom = true
            @roomId = cu.room_id
          end
        end
      end
      if @isRoom
      else
        @room = Room.new
        @entry = Entry.new
      end
    end
  end

  def category
    @category = Category.find(params[:id])
    @categorys = @category.children
    respond_to do |format|
      format.json
    end
  end

  def skill
    @skill1 = Skill1.find(params[:id])
    @skill1s = @skill1.children
    respond_to do |format|
      format.json
    end
  end

  def set_parent
    @parents = Category.where(ancestry: nil)
    @children = Category.find(params[:id]).children
    respond_to do |format|
      format.html
      format.json
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end

end