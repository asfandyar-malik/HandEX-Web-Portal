class AddDescriptionToOfficialDocument < ActiveRecord::Migration[5.2]
  def change
    add_column :officialdocuments, :description, :string
  end
end
