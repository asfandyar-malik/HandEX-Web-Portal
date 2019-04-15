class RenameColumnInInsurances < ActiveRecord::Migration[5.2]
  def change
    rename_column :insurances, :does_corruption_declaration_appy, :does_corruption_declaration_apply
  end
end