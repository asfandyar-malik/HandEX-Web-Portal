class RemoveColumnsFromInsurances < ActiveRecord::Migration[5.2]
  def change
    remove_column :insurances, :charged_interest_to_importer_currency
    remove_column :insurances, :dont_lower_economic_risk
  end
end