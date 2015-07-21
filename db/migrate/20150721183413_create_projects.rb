class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name, index: true
      t.string :description
      t.datetime :start_date, index: true
      t.datetime :end_date, index: true
      t.float :funding_goal

      t.timestamps null: false
    end
  end
end
