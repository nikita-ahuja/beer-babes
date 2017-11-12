class BeersController < ApplicationController

   def index
      if params[:user_id]
        @beers = User.find(params[:user_id]).beers
      else
        @searched_beers = Beer.search(params[:search])
      end
    end

    def new
      @beer = Beer.new
    end

    def create
      @beer = Beer.create(beer_params)
    end

  private

      def beer_params
        params.require(:beer).permit(:name, :type, :independent, :user_id, reviews_attributes: [ :comments, :notes, :location, :date, :rating ])
      end


end

