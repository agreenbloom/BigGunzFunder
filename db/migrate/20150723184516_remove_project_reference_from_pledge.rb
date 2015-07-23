class RemoveProjectReferenceFromPledge < ActiveRecord::Migration
  def change
    remove_reference :pledges, :project
  end
end
