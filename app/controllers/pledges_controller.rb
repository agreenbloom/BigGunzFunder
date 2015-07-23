class PledgesController < ApplicationController
  def new
    @pledge = Pledge.new
  end

  def create
    @pledge = Pledge.new(pledge_params)
    @pledge.project = Project.find(params[:project_id])
    @pledge.backer = current_user
    if @pledge.save
      flash[:notice] = "Thanks for pledging $#{@pledge.amount}0!"
    else
      flash[:alert] = "Unable to make pledge"
      flash[:error] = @pledge.errors.full_messages.first
    end
    redirect_to @pledge.project
  end

  def show
    @pledge = Pledge.find(params[:id])
  end

  private
  def pledge_params
    params.require(:pledge).permit(:amount)
  end
end
