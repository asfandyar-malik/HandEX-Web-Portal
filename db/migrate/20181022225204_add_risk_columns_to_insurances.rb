class AddRiskColumnsToInsurances < ActiveRecord::Migration[5.2]
  def change
    add_column :insurances, :risk_avaline_guarantee, :boolean
    add_column :insurances, :risk_contractual_warranty_coverage, :boolean
    add_column :insurances, :risk_shipment_risk_cover, :boolean
    add_column :insurances, :risk_supplier_credit_cover, :boolean
    add_column :insurances, :risk_further_coverage, :boolean
  end
end
