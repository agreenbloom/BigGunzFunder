class AddProjectToReward < ActiveRecord::Migration
  def change
    add_reference :rewards, :project, index: true
  end
end
