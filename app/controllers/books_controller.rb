class BooksController < ApplicationController
  def index
    @books = Book.all
  end
  
  def show 
    @book = Book.find(params[:id])
  end
  
  def new 
    @book = Book.new
  end
  
  def create
    @book = Book.create(book_params)
    if @book.save
      flash[:success] = "Book Added."
      redirect_to @book
    else
      flash[:error] = "There was an error."
      render :new
    end
  end
  
  private
    def book_params
      params.require(:book).permit(:title, :author)
    end
end
