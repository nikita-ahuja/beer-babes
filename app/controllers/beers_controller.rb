class BeersController < ApplicationController

   def index
      if params[:user_id]
        @beers = User.find(params[:user_id]).beers
      else
        @searched_beers = Beer.search(params[:search])
      end
    end 

end
