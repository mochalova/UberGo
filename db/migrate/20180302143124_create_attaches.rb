class CreateAttaches < ActiveRecord::Migration[5.1]
  def change
    create_table :attaches do |t|
      t.integer  :driver_id
      t.string   :file_file_name
      t.integer  :file_file_size
      t.string   :file_content_type
      t.datetime :file_updated_at

      t.timestamps
    end
  end
end
