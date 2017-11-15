
class UsersController < ApplicationController
  include SessionsHelper

  before_action :require_login, only: [:show, :edit, :update, :destroy]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      render 'new'
    end
  end

  def show
    @user = User.find_by(id: params[:id])
    redirect_to root_url if current_user.nil?

    @suggestions = []
      current_user.reviews.each do |review|
        if review.rating >= 4
          Beer.where(id: review.beer_id).each do |beer|
            # @suggestions << Beer.find_by(beer_style: beer.beer_style)
            @suggestions << Beer.find_by(characteristic: beer.characteristic)
          end
        end
      end
    @suggestions.uniq!

    users = User.where(["light_rating = ? or hoppy_rating = ? or dark_rating = ?", current_user.light_rating, current_user.hoppy_rating, current_user.dark_rating])

    @similar_users = users.reject { |user| user.username == current_user.username }

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

  def edit
    @user = User.find_by(id: params[:id])
    redirect_to login_path unless current_user == @user
  end

  def update
    @user = User.find_by(id: params[:id])
    # binding.pry
    if @user.authenticate(params[:user][:current_password])
      if @user.update_attributes(user_params)
        redirect_to user_path(@user)
      else
        render 'edit'
      end
    else
      @errors = "Invalid password."
      render 'edit'
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to root_url
  end


private
  def user_params
    params.require(:user).permit(:username, :email, :password, :light_rating, :dark_rating, :hoppy_rating)
  end

  def require_login
    unless logged_in?
      flash[:error] = "You must be logged in to access this section"
      redirect_to login_path
    end
  end

end
