class CreatePledges < ActiveRecord::Migration
  def change
    create_table :pledges do |t|
      t.float :amount

      t.timestamps null: false
    end
  end
end
