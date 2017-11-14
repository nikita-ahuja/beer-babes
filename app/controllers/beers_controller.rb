class BeersController < ApplicationController

  def index
    if params[:user_id]
      @beers = User.find(params[:user_id]).beers
    else
      @searched_beers = Beer.search(params[:search])
    end
  end

  def show
    @beer = Beer.find(params[:id])
    # @place = GoogleMapsApi::GOOGLEPLACES.spots_by_query(@beer.city)
  end


end
