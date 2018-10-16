class RenameHokumentToDocument < ActiveRecord::Migration[5.2]
  def change
    rename_table :hokuments, :documents
  end
end
