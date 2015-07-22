class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to root_url, notice: "You've signed up!"
    else
      render :new, alert: "Please try again."
  end

  private
  def user_params
    params.require(:user).permit(:email, :crypted_password, :salt)
  end

end
