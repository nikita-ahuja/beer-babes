class HomeController < ApplicationController
  #skip_before_action :require_login, only: [:index, :show]

  def index
    #logged_in?
    puts "hi"
  end

end