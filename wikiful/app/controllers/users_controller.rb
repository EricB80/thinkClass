class UsersController < ApplicationController
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_url, notice: "Thanks for joining!"
      session[:user_id = @user.id
    else
      render "new"
    end
  end
  
  private
  def user_params
    params.require(:user).permit(:email, :name, :password, :password_confirmation)
  end
end
