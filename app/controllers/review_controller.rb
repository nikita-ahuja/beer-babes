class ReviewController < ApplicationController
  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])
    if @review.update(review_params)
    else
      render 'edit'
    end
  end

  def destroy
    @review = Review.find(params[:id])

  end

private
  def review_params
    params.require(:review).permit(:beer_id, :user_id, :comments, :notes, :date, :location, :rating)
  end
end
