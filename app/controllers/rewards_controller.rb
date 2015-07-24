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
      flash[:notice] = "Success! Your reward was created."
      format.html { redirect_to project_url(@project) }
      format.js
    else
      flash[:notice] = "Woops. Your reward couldn't be created."
      format.html { render :new }
      format.js { }
    end
  end

  private
  def reward_params
    params.require(:reward).permit(:name, :description, :amount, :limit)
  end
end
