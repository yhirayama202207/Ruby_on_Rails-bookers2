class BooksController < ApplicationController
  
  def new
    @book = Book.new
  end
  
  def index
  end

  def create
    @book = book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to books_show_path
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
  
   # 投稿データのストロングパラメータ
  private

  def book_params
    params.require(:book).permit(:title, :body)
  end
  
end