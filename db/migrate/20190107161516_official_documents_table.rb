class OfficialDocumentsTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :officialdocuments
  end
end
