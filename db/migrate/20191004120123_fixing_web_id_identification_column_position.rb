class FixingWebIdIdentificationColumnPosition < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :webid_identification, :boolean
    add_column :insurances, :webid_identification, :boolean
    add_column :export_applications, :webid_identification, :boolean
  end
end
