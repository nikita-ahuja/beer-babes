class UsersController < ApplicationController
   def new
    binding.pry
  end

  def show
    @current_user = User.find(3)
    @suggestions = []
    @current_user.reviews.each do |review|
      if review.rating >= 4
        Beer.where(id: review.beer_id).each do |beer|
          @suggestions << Beer.find_by(style: beer.style)
        end
      end
    end
    @suggestions.uniq!

  end

  def create
  end

end
