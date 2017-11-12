class UsersController < ApplicationController
   def new
    binding.pry
  end

  def show
    @current_user = User.find(10)
    @suggestions = []
      @current_user.reviews.each do |review|
        if review.rating >= 4
          Beer.where(id: review.beer_id).each do |beer|
            @suggestions << Beer.find_by(style: beer.style)
          end
        end
      end
    @suggestions.uniq!

    users = User.where(["light_rating = ? or hoppy_rating = ? or dark_rating = ?", @current_user.light_rating, @current_user.hoppy_rating, @current_user.dark_rating])

    @similar_users = users.reject { |user| user.username == @current_user.username }

    @babe_suggestions = []
      @similar_users.each do |user|
        user.reviews.each do |review|
          if review.rating >= 4
            @babe_suggestions << Beer.find(review.beer_id)
          end
        end
      end
    @babe_suggestions.uniq!
  end

  def create
  end

end
