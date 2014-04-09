class TeamController < ApplicationController
  def index
    @team = Teams.new
  end
end
