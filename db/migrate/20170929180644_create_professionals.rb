class CreateProfessionals < ActiveRecord::Migration
  def change
    create_table :professionals do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :phone_number

      t.timestamps null: false
    end
  end
end
