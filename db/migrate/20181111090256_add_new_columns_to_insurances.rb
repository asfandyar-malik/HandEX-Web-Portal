class AddNewColumnsToInsurances < ActiveRecord::Migration[5.2]
  def change
    add_column :insurances, :employees_count, :string
    add_column :insurances, :revenue_last_year, :string
    add_column :insurances, :ak_number, :string
    add_column :insurances, :company_name, :string
    add_column :insurances, :tax_number, :string
    add_column :insurances, :years_trading_without_hermes_cover, :string
    add_column :insurances, :experience_with_export_country, :string
    add_column :insurances, :adequate_claims_management, :string
    add_column :insurances, :agreed_payments_output, :string
    add_column :insurances, :agreed_payments_time, :string
    add_column :insurances, :agreed_payments_some_output, :string
    add_column :insurances, :payment_vehichle, :string
    add_column :insurances, :receive_deposit_time, :string
    add_column :insurances, :repayment_profile_structure, :string
    add_column :insurances, :loan_term_start, :string
    add_column :insurances, :loan_term_other_description, :string

    add_column :insurances, :number_of_installments, :string
    add_column :insurances, :down_payment_before_delivery_currency, :string
    add_column :insurances, :down_payment_before_delivery_amount, :string
    add_column :insurances, :down_payment_before_delivery_explain, :string

    add_column :insurances, :sonstige_kurzfrist_agreed_payment_currency, :string
    add_column :insurances, :sonstige_kurzfrist_agreed_payment_amount, :string
    add_column :insurances, :sonstige_kurzfrist_agreed_payment_percent, :string
    add_column :insurances, :sonstige_kurzfrist_agreed_payment_date, :string
    add_column :insurances, :sonstige_kurzfrist_agreed_payment_output, :string

    add_column :insurances, :sonstige_kurzfrist_advance_payment_currency, :string
    add_column :insurances, :sonstige_kurzfrist_advance_payment_amount, :string
    add_column :insurances, :sonstige_kurzfrist_advance_payment_explain, :string
    add_column :insurances, :sonstige_kurzfrist_deposit_received, :string
    add_column :insurances, :sonstige_kurzfrist_repayment_structure, :string

    add_column :insurances, :sonstige_kurzfrist_credit_start, :string
    add_column :insurances, :sonstige_kurzfrist_credit_start_sonstige_explain, :string
    add_column :insurances, :sonstige_kurzfrist_number_of_installments, :string
    add_column :insurances, :sonstige_kurzfrist_payment_vehichle_explain, :string
    add_column :insurances, :yes_sonstige_kurzfrist_certificate_of_origin, :string
    add_column :insurances, :no_sonstige_kurzfrist_certificate_of_origin, :string
    add_column :insurances, :part_of_goods__sonstige_kurzfrist_certificate_of_origin, :string

    add_column :insurances, :agreed_payments_currency, :string
    add_column :insurances, :agreed_payments_amount, :string

    add_column :insurances, :source_of_fund, :string
    add_column :insurances, :source_of_fund_currency, :string
    add_column :insurances, :source_of_fund_amount, :string


    add_column :insurances, :overall_responsibility_project_taken, :string
    add_column :insurances, :overall_project_volume_currency, :string
    add_column :insurances, :overall_project_volume, :string
    add_column :insurances, :use_of_fund, :string
    add_column :insurances, :use_of_fund_currency, :string
    add_column :insurances, :amount_of_fund, :string
    add_column :insurances, :delivery_doesnt_affects_sensitive_areas, :boolean
    add_column :insurances, :delivery_affects_natural_reserves, :boolean
    add_column :insurances, :delivery_affects_indigenous_people, :boolean
    add_column :insurances, :delivery_affects_cultural_heritage, :boolean
    add_column :insurances, :delivery_affects_other, :boolean
    add_column :insurances, :delivery_affects_other_explain, :string
    add_column :insurances, :yes_export_requires_exportlicense, :boolean
    add_column :insurances, :no_export_requires_exportlicense, :boolean
    add_column :insurances, :which_regulation_requires_exportlicense, :string
    add_column :insurances, :exportlicense_status, :string
    add_column :insurances, :yes_deliver_secondhand_goods, :boolean
    add_column :insurances, :no_dont_deliver_secondhand_goods, :boolean
    add_column :insurances, :product_original_date_of_manifacture, :string
    add_column :insurances, :product_remaining_life, :string
    add_column :insurances, :yes_good_overhauled_before_reselling, :boolean
    add_column :insurances, :no_good_arent_overhauled_before_reselling, :boolean
    add_column :insurances, :goods_overhauled_location, :string
    add_column :insurances, :yes_contract_already_signed_all_parties, :boolean
    add_column :insurances, :no_contract_already_signed_all_parties, :boolean
    add_column :insurances, :goods_completion_date, :string
    add_column :insurances, :companny_internal_id, :string
    add_column :insurances, :yes_special_contract_structure, :boolean
    add_column :insurances, :no_special_contract_structure, :boolean
    add_column :insurances, :explain_special_contract_structure, :string
    add_column :insurances, :graphic_representation_project_participants, :string
    add_column :insurances, :contract_currency, :string
    add_column :insurances, :order_value_export_business_currency, :string
    add_column :insurances, :order_value_export_business_currency_amount, :string
    add_column :insurances, :total_delivery_value, :string
    add_column :insurances, :percentage_of_spare_parts_in_whole_order, :string
    add_column :insurances, :more_components_open_to_exporter_currency, :string
    add_column :insurances, :more_components_open_to_exporter_amount, :string
    add_column :insurances, :more_components_open_to_exporter_explain, :string
    add_column :insurances, :ja_customer_counts_interest, :boolean
    add_column :insurances, :no_customer_counts_interest, :boolean
    add_column :insurances, :interest_currency, :string
    add_column :insurances, :interest_amount, :string
    add_column :insurances, :yes_price_adjustment_clause, :boolean
    add_column :insurances, :no_price_adjustment_clause, :boolean
    add_column :insurances, :explain_billing_methods, :string
    add_column :insurances, :yes_multiple_deliveries, :boolean
    add_column :insurances, :no_multiple_deliveries, :boolean
    add_column :insurances, :delivery_start, :string
    add_column :insurances, :delivery_end, :string
    add_column :insurances, :other_important_delivery_information, :string
    add_column :insurances, :other_important_delivery_milestones, :string
    add_column :insurances, :payment_term_shortterm, :string
    add_column :insurances, :payment_term_middleterm, :string
    add_column :insurances, :payment_term_both, :string
    add_column :insurances, :downpayment_delivery_currency, :string
    add_column :insurances, :downpayment_delivery_amount, :string
    add_column :insurances, :downpayment_delivery_description, :string

    add_column :insurances, :describe_export_business, :string
    add_column :insurances, :reason_for_buying_good, :string
    add_column :insurances, :also_provide_service_training, :boolean
    add_column :insurances, :product_branch, :string
    add_column :insurances, :explain_product_branch, :string
    add_column :insurances, :part_of_big_project_yes, :boolean
    add_column :insurances, :part_of_big_project_no, :boolean
    add_column :insurances, :explain_complete_project, :string

    add_column :insurances, :risk_avaline_guarantee, :boolean
    add_column :insurances, :risk_contractual_warranty_coverage, :boolean
    add_column :insurances, :risk_shipment_risk_cover, :boolean
    add_column :insurances, :risk_supplier_credit_cover, :boolean
    add_column :insurances, :risk_further_coverage, :boolean

    add_column :insurances, :total_financing_required, :string
    add_column :insurances, :is_investment_good, :string
    add_column :insurances, :contract_value, :string
    add_column :insurances, :payment_deadline, :string
    add_column :insurances, :private_sector, :boolean
    add_column :insurances, :public_sector, :boolean
    
  end
end
