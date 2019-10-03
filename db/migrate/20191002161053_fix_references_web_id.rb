class FixReferencesWebId < ActiveRecord::Migration[5.2]
  def change
    remove_column :webids, :export_application_id
    add_reference :webids, :user, foreign_key: true
  end
end
