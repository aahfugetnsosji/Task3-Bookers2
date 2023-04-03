class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def index
    @books = Book.all
    @book = Book.new
    @users = User.all
  end

  def show
  end

  def edit
  end
  
  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to book_path(books.id)
  end
  
  def update
  end
  
  def destroy
  end
  
  private
  def book_params
    params.repuire(:book).permit(:title, :body)
  end
end
