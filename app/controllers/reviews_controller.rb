class ReviewsController < ApplicationController
  
  def new
    @book = Book.find(params[:book_id])
  end
  
  def create
    @book = Book.find(params[:book_id])
    @review = @book.reviews.create(review_params)
    if @review.save
      flash[:success] = "Review Added."
      redirect_to book_path(@book)
    else
      flash[:error] = "There was an error."
      render :new
    end
  end
  
  private
    def review_params
      params.require(:review).permit(:name, :comment)
    end
end
