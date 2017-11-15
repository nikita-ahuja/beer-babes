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
    @beer = Beer.find_or_initialize_by(name: params[:beer][:name])
    if @beer.update(beer_params)
      redirect_back(fallback_location: user_beers_path)
    else
      @beers = User.find(params[:user_id]).beers
      @errors = "Your beer was not saved. Please provide name and/or rating."
      render 'index'
   end
  end

  def new
    @beer = Beer.new
  end

  def show
    @beer = Beer.find(params[:id])
    # @place = GoogleMapsApi::GOOGLEPLACES.spots_by_query(@beer.city)
  end

  def edit
    @review = Review.where(user_id: current_user.id, beer_id: params[:id]).first
  # binding.pry
  end
  
  def update
  end

private
  def beer_params
    params.require(:beer).permit(:name, :independent, reviews_attributes: [ :comments, :notes, :location, :rating, :user_id])
  end
end
