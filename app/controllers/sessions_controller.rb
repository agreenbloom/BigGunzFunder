class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    if @user = login(params[:email], params[:password])
      flash[:notice] = 'Login successful'
      redirect_to projects_url
    else
      flash[:alert] = 'Login failed'
      render action: 'new'
    end
  end

  def destroy
    logout
    redirect_to(root_url, notice: 'Logged out')
  end

end
