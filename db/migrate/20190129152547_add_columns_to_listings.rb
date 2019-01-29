class AddColumnsToListings < ActiveRecord::Migration[5.2]
  def change
    add_column :listings, :further_lower_economic_risk, :string
    add_column :listings, :dont_lower_economic_risk, :string
    add_column :listings, :corruption_declaration_applies, :string
    add_column :listings, :no_corruption_declaration_applies, :string
    add_column :listings, :explain_corruption_declaration_applies, :string
  end
end
