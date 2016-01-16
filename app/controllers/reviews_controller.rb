class ReviewsController < ApplicationController
  
  def new
    @book = Book.find(params[:bood_id])
  end
end
