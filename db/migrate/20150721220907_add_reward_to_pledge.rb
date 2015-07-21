class AddRewardToPledge < ActiveRecord::Migration
  def change
    add_reference :pledges, :reward, index: true
  end
end
