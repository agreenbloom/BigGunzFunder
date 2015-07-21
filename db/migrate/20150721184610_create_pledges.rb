class CreatePledges < ActiveRecord::Migration
  def change
    create_table :pledges do |t|
      t.float :amount
      t.references :project, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
