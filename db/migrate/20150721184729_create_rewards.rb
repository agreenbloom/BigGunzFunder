class CreateRewards < ActiveRecord::Migration
  def change
    create_table :rewards do |t|
      t.string :name
      t.text :description
      t.float :amount
      t.integer :limit
      t.references :project, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
