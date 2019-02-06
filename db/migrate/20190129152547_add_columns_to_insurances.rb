class AddColumnsToListings < ActiveRecord::Migration[5.2]
  def change
    add_column :insurances, :further_lower_economic_risk, :string
    add_column :insurances, :dont_lower_economic_risk, :string
    add_column :insurances, :corruption_declaration_applies, :string
    add_column :insurances, :no_corruption_declaration_applies, :string
    add_column :insurances, :explain_corruption_declaration_applies, :string
  end
end
