class RegistrationsController < ApplicationController

  def index
    @user = User.new(params[:user])
    @location = Location.new
    @locations = Locations.order(updated_at: :asc)
  end






end