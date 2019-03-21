class RemoveMoreFielFromdInsurances < ActiveRecord::Migration[5.2]
  def change
    remove_column :insurances, :down_payment_before_delivery_currency
    remove_column :insurances, :down_payment_before_delivery_amount
    remove_column :insurances, :down_payment_before_delivery_explain
    remove_column :insurances, :sonstige_kurzfrist_agreed_payment_currency
    remove_column :insurances, :sonstige_kurzfrist_agreed_payment_amount
    remove_column :insurances, :sonstige_kurzfrist_agreed_payment_percent
    remove_column :insurances, :sonstige_kurzfrist_agreed_payment_date
    remove_column :insurances, :sonstige_kurzfrist_agreed_payment_output
    remove_column :insurances, :source_of_fund
    remove_column :insurances, :source_of_fund_currency
    remove_column :insurances, :source_of_fund_amount
    remove_column :insurances, :overall_responsibility_project_taken
    remove_column :insurances, :overall_project_volume_currency
    remove_column :insurances, :overall_project_volume
    remove_column :insurances, :use_of_fund
    remove_column :insurances, :use_of_fund_currency
    remove_column :insurances, :amount_of_fund
    remove_column :insurances, :product_original_date_of_manifacture
    remove_column :insurances, :product_remaining_life
    remove_column :insurances, :yes_good_overhauled_before_reselling
    remove_column :insurances, :no_good_arent_overhauled_before_reselling
    remove_column :insurances, :goods_overhauled_location
    remove_column :insurances, :explain_special_contract_structure
    remove_column :insurances, :graphic_representation_project_participants
    remove_column :insurances, :charged_interest_to_importer_amount
    remove_column :insurances, :explain_complete_project
    remove_column :insurances, :supplementary_risk_housebank_guarantee
    remove_column :insurances, :risk_contractual_warranty_coverage
    remove_column :insurances, :risk_further_coverage
    remove_column :insurances, :total_financing_required
    remove_column :insurances, :country_category
    remove_column :insurances, :agreed_payments_currency2
    remove_column :insurances, :importer_ak_number
    remove_column :insurances, :exporter_company_registration_number
    remove_column :insurances, :exporter_district_court
    remove_column :insurances, :exporter_company_province
    remove_column :insurances, :representative
    remove_column :insurances, :exporter_email
  end
end
