class CreateDrivers < ActiveRecord::Migration[5.1]
  def change
    create_table :drivers do |t|
      t.string :last_name
      t.string :first_name
      t.string :phone
      t.string :email
      t.string :bank
      t.string :city

      t.timestamps
    end
  end
end
