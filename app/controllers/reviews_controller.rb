class ReviewsController < ApplicationController
	include SessionsHelper

	def update

		@review = Review.find(params[:id])

		if @review.update(review_params)
			redirect_to user_beers_path(current_user.id)
		else
			render "edit"
		end
 	end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy

    redirect_to user_beers_path(current_user.id)
  end

 	private

 	def review_params
  	params.require(:review).permit(:comments, :notes,:rating)
	end

end
