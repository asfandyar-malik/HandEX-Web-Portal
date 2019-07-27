class AddUserIdIntoImporterInformation < ActiveRecord::Migration[5.2]
  def change
    add_column :importer_informations, :user_id, :integer
  end
end
