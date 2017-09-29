class CreateProblems < ActiveRecord::Migration
  def change
    create_table :problems do |t|
      t.string :name
      t.integer :year
      t.string :description
      t.float :budget
      t.integer :user_id
      t.integer :subcategory_id

      t.timestamps null: false
    end
  end
end
