class RewardsController < ApplicationController
  def index
    @rewards = Reward.all
  end

  def new
    @reward = Reward.new
  end

  def create
    @reward = Reward.new(reward_params)
    if @reward.save
      redirect_to new_project_url(@project)
      flash[:notice] = "Success! Your reward was created."
    else
      render :new
      flash[:notice] = "Woops. Your reward couldn't be created."
  end

  private
  def reward_params
    params.require(:reward).permit(:name, :description, :amount, :limit)
  end
end
