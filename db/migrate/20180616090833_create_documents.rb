class CreateDocuments < ActiveRecord::Migration[5.1]
  def change
    create_table :documents do |t|
      t.integer  :driver_id
      t.string   :kind

      t.timestamps
    end

    add_index :documents, :driver_id
    add_index :documents, :kind
  end
end
