class RemoveValuesFromInsuranceTable < ActiveRecord::Migration[5.2]
  def change
    remove_column :insurances, :risk_shipment_risk_cover
    remove_column :insurances, :risk_supplier_credit_cover
  end
end
