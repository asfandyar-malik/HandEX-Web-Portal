class AddDefaultValueForInsurances < ActiveRecord::Migration[5.2]
  def change
    change_column :insurances, :delivery_doesnt_affects_sensitive_areas, :boolean, default: false
    change_column :insurances, :delivery_affects_natural_reserves, :boolean, default: false
    change_column :insurances, :delivery_affects_indigenous_people, :boolean, default: false
    change_column :insurances, :delivery_affects_cultural_heritage, :boolean, default: false
    change_column :insurances, :delivery_affects_other, :boolean, default: false
    change_column :insurances, :yes_export_requires_exportlicense, :boolean, default: false
    change_column :insurances, :no_export_requires_exportlicense, :boolean, default: false
    change_column :insurances, :yes_deliver_secondhand_goods, :boolean, default: false
    change_column :insurances, :no_dont_deliver_secondhand_goods, :boolean, default: false
    change_column :insurances, :yes_contract_already_signed_all_parties, :boolean, default: false
    change_column :insurances, :no_contract_already_signed_all_parties, :boolean, default: false
    change_column :insurances, :yes_special_contract_structure, :boolean, default: false
    change_column :insurances, :no_special_contract_structure, :boolean, default: false
    change_column :insurances, :yes_charge_interest_to_importer, :boolean, default: false
    change_column :insurances, :no_charge_interest_to_importer, :boolean, default: false
    change_column :insurances, :yes_price_adjustment_clause_with_importer, :boolean, default: false
    change_column :insurances, :no_price_adjustment_clause_with_importer, :boolean, default: false
    change_column :insurances, :yes_goods_sent_multiple_deliveries, :boolean, default: false
    change_column :insurances, :no_goods_sent_multiple_deliveries, :boolean, default: false
    change_column :insurances, :yes_deliver_part_of_overall_project_other_companies, :boolean, default: false
    change_column :insurances, :no_deliver_part_of_overall_project_other_companies, :boolean, default: false
    change_column :insurances, :exporting_to_private_sector, :boolean, default: false
    change_column :insurances, :exporting_to_public_sector, :boolean, default: false
    change_column :insurances, :yes_residualriskapetite_minimum_five, :boolean, default: false
    change_column :insurances, :no_residualriskapetite_minimum_five, :boolean, default: false
    change_column :insurances, :yes_investment_good, :boolean, default: false
    change_column :insurances, :no_investment_good, :boolean, default: false
    change_column :insurances, :yes_exporter_offers_servicing_for_goods, :boolean, default: false
    change_column :insurances, :no_exporter_offers_servicing_for_goods, :boolean, default: false
  end
end