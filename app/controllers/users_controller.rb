class UsersController < ApplicationController
  
  def new
    @user = User.new
  end
  
  def index
  end
  
  def create
    @user = user.new(book_params)
    @user.user_id = current_user.id
    @user.save
    redirect_to user_session_path
  end

  def show
    @user = User.find(params[:id])
    @books = @user.books
  end

  def edit
  end
end
