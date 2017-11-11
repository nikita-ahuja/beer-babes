class UsersController < ApplicationController

  def new
  	binding.pry
  end

  def show
    # @beers = BreweryApi::CLIENT.beers.all(name: params[:name])
  end

  def create
  end

end