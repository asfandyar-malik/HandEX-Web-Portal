class RemoveNoColumnsFromInsurance < ActiveRecord::Migration[5.2]
  def change
    remove_column :insurances, :no_investment_good
    remove_column :insurances, :no_exporter_offers_servicing_for_goods
    remove_column :insurances, :no_deliver_part_of_overall_project_other_companies
    remove_column :insurances, :no_export_requires_exportlicense
    remove_column :insurances, :no_dont_deliver_secondhand_goods
    remove_column :insurances, :no_contract_already_signed_all_parties
    remove_column :insurances, :no_special_contract_structure
    remove_column :insurances, :no_price_adjustment_clause_with_importer
    remove_column :insurances, :no_goods_sent_multiple_deliveries
    remove_column :insurances, :no_security_businnes_provided
    remove_column :insurances, :no_exporter_influence_on_importer_management
    remove_column :insurances, :no_previous_payment_experience_with_importer
    remove_column :insurances, :no_residualriskapetite_minimum_five
    remove_column :insurances, :no_payment_term_already_agreed
    remove_column :insurances, :no_charge_interest_to_importer
    remove_column :insurances, :no_previously_hermes_insurance_used
    remove_column :insurances, :no_corruption_declaration_applies
  end
end