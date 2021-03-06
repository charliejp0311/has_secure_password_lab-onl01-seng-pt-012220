class UsersController < ApplicationController
  def new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      @user 
      redirect_to '/welcome'
    else
      redirect_to 'users/new'
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
