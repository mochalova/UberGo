class AddDocumentIdToAttach < ActiveRecord::Migration[5.1]
  def change
    add_column :attaches, :document_id, :integer
    add_index  :attaches, :document_id 
  end
end
