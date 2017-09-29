class CreateProblems < ActiveRecord::Migration
  def change
    create_table :problems do |t|
      t.string :name
      t.string :brand
      t.string :model
      t.integer :year
      t.float :budget
      t.integer :user_id
      t.integer :subcategory_id

      t.timestamps null: false
    end
  end
end
