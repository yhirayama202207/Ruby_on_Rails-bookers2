class UsersController < ApplicationController
  
  def new
    @user = User.new
  end
  
  def index
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
    @books = @user.books
  end

  def edit
    @user = User.find(params[:id])
  end
  
  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to user_path(user.id)
  end
  
  private

  def user_params
    params.require(:user).permit(:name, :profile_image)
  end
end
