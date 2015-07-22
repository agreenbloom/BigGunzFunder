class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to root_url
      flash[:notice] = "You've signed up!"
    else
      render :root_url
      flash[:alert] = "Please try again."
    end

  end

  private
  def user_params
    params.require(:user).permit(:email, :crypted_password, :salt)
  end

end
