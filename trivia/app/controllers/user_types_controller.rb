class UserTypesController < ApplicationController
  before_filter :load_all_user_types, :only => [:index, :create]
  
  def index
    @user_type = UserType.new
  end
  
  def new
    @user_type = UserType.new
  end
  
  def create
    @user_type = UserType.new(user_type_params)
    if @user_type.save
      redirect_to user_types_path
    else
      render action: :index
    end
  end
  
  private
  def load_all_user_types
    @user_types = UserType.order(description: :asc)
  end
  
  def user_type_params
    params.require(:user_type).permit(:description)
  end

end
