class BeersController < ApplicationController
    
    def index
      @beers = User.find(params[:user_id]).beers
    
    end 


end

