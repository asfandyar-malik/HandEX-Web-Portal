class RenameListingsToInsurance < ActiveRecord::Migration[5.2]
  def change
    rename_table :listings, :insurances
  end
end
