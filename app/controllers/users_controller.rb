class UsersController < ApplicationController
  
  def new
    @user = User.new
  end
  
  def index
  end
  
  def create
  end

  def show
    @user = User.find(params[:id])
    @books = @user.books
  end

  def edit
    @user = User.find(params[:id])
    @user.user_id = current_user.id
    @user.update
    redirect_to user_path
  end
  
  private

  def user_params
    params.require(:user).permit(:name, :profile_image)
  end
end