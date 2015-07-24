class PledgesController < ApplicationController
  def new
    @pledge = Pledge.new
  end

  def create
    @pledge = Pledge.new
    @pledge.reward = Reward.find(params[:reward_id])
    @pledge.backer = current_user
    if @pledge.save
      flash[:notice] = "Thanks for pledging $#{@pledge.reward.amount}0!"
    else
      flash[:alert] = "Unable to make pledge"
      flash[:error] = @pledge.errors.full_messages.first
    end
    redirect_to @pledge.reward.project
  end

  def show
    @pledge = Pledge.find(params[:id])
  end
end
