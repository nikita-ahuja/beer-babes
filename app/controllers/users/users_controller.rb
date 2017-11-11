class Users::RegistrationsController < Devise::RegistrationsController

  def new
  end

  def show
    # @beers = BreweryApi::CLIENT.beers.all(name: params[:name])
  end

  def create
    binding.pry
  end

end
