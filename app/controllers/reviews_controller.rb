class ReviewsController < ApplicationController
  def new
    byebug
    @review = Review.new(renting_id: params[:renting_id])
byebug

  end

  def create
    @review = Review.new(review_params)
    byebug
    if @review.save
      redirect_to renting_path(@review.renting)
    else
      #flash[:errors] n ish
      redirect_to new_review_path
    end
  end

  private

  def review_params
    params.require(:review).permit(:content,:rating,:renting_id)
  end
end
