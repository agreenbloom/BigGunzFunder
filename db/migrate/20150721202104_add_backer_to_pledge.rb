class AddBackerToPledge < ActiveRecord::Migration
  def change
    add_reference :pledges, :backer, index: true
  end
end
