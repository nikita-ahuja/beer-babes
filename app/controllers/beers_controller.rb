class BeersController < ApplicationController
  include SessionsHelper

  def index
   @beer = Beer.new
   @beer.reviews.build


   if params[:user_id]
      @beers = User.find(params[:user_id]).beers
    else
     @searched_beers = Beer.search(params[:search])
   end

  end

def create
  @beer = Beer.new(beer_params)
  @beer.save
  binding.pry
  redirect_back(fallback_location: user_beers_path)
end

def new
  @beer = Beer.new
end



private

def beer_params
  params.require(:beer).permit(:name, :independent, reviews_attributes: [ :comments, :notes, :location, :rating, :user_id])
end


end

