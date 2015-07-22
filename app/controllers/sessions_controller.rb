class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])
      :notice = "Successfully logged in!"
      session[:user_id] = user.id
      redirect_to :root
    else
      :alert = "Wrong email or password. Please try again."
      render :new
    end

  end

end
