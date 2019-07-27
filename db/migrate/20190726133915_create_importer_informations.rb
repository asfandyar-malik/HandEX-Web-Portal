class CreateImporterInformations < ActiveRecord::Migration[5.2]
  def change
    create_table :importer_informations do |t|

      t.timestamps
    end
  end
end
