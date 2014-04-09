class UsersController < ApplicationController
  
  def index
    #@users = User.order(update_at: :asc)
    @user = User.new(params[:user])
  end
  
  def new
    @user = User.new(params[:user])
    @location = Location.new(params[:location])
    @locations = Locations.order(updated_at: :asc)
    @team = Team.new(params[:team])
    @teams = Teams.order(updated_at: :asc)
  end


  private
  
  def user_params
    params.require(:user).permit(:name, :user_name, :email, :password, :team, :location)
  end

end
