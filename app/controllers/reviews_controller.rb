class ReviewsController < ApplicationController
  before_action :find_review, only: [:show, :edit, :update, :destroy]
  def new
    @review = Review.new(renting_id: params[:renting_id])
  end

  def create
    @review = Review.new(review_params)
    if @review.save
      redirect_to renting_path(@review.renting)
    else
      flash[:errors] = @review.errors.full_messages
      redirect_to new_review_path :renting_id => @review.renting.id
    end
  end

  def edit
  end

  def update
    if @review.update(review_params)
      redirect_to renting_path(@review.renting)
    else
      flash[:errors] = @review.errors.full_messages
      redirect_to edit_review_path(@review)
    end
  end

  def destroy
    renting = @review.renting
    @review.destroy
    redirect_to renting_path(renting)
  end

  private

  def find_review
    @review = Review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:content,:rating,:renting_id)
  end
end
