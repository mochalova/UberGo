class CreateDrivers < ActiveRecord::Migration[5.1]
  def change
    create_table :drivers do |t|
      t.string :last_name
      t.string :city

      t.timestamps
    end
  end
end
