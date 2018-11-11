class AddNewColumnsToListings < ActiveRecord::Migration[5.2]
  def change
    add_column :listings, :employees_count, :string
    add_column :listings, :revenue_last_year, :string
    add_column :listings, :ak_number, :string
    add_column :listings, :company_name, :string
    add_column :listings, :tax_number, :string
    add_column :listings, :years_trading_without_hermes_cover, :string
    add_column :listings, :experience_with_export_country, :string
    add_column :listings, :adequate_claims_management, :string
    add_column :listings, :agreed_payments_output, :string
    add_column :listings, :agreed_payments_time, :string
    add_column :listings, :agreed_payments_some_output, :string
    add_column :listings, :payment_vehichle, :string
    add_column :listings, :receive_deposit_time, :string
    add_column :listings, :repayment_profile_structure, :string
    add_column :listings, :loan_term_start, :string
    add_column :listings, :loan_term_other_description, :string

    add_column :listings, :number_of_installments, :string
    add_column :listings, :down_payment_before_delivery_currency, :string
    add_column :listings, :down_payment_before_delivery_amount, :string
    add_column :listings, :down_payment_before_delivery_explain, :string

    add_column :listings, :sonstige_kurzfrist_agreed_payment_currency, :string
    add_column :listings, :sonstige_kurzfrist_agreed_payment_amount, :string
    add_column :listings, :sonstige_kurzfrist_agreed_payment_percent, :string
    add_column :listings, :sonstige_kurzfrist_agreed_payment_date, :string
    add_column :listings, :sonstige_kurzfrist_agreed_payment_output, :string

    add_column :listings, :sonstige_kurzfrist_advance_payment_currency, :string
    add_column :listings, :sonstige_kurzfrist_advance_payment_amount, :string
    add_column :listings, :sonstige_kurzfrist_advance_payment_explain, :string
    add_column :listings, :sonstige_kurzfrist_deposit_received, :string
    add_column :listings, :sonstige_kurzfrist_repayment_structure, :string

    add_column :listings, :sonstige_kurzfrist_credit_start, :string
    add_column :listings, :sonstige_kurzfrist_credit_start_sonstige_explain, :string
    add_column :listings, :sonstige_kurzfrist_number_of_installments, :string
    add_column :listings, :sonstige_kurzfrist_payment_vehichle_explain, :string
    add_column :listings, :yes_sonstige_kurzfrist_certificate_of_origin, :string
    add_column :listings, :no_sonstige_kurzfrist_certificate_of_origin, :string
    add_column :listings, :part_of_goods__sonstige_kurzfrist_certificate_of_origin, :string

    add_column :listings, :agreed_payments_currency, :string
    add_column :listings, :agreed_payments_amount, :string

    add_column :listings, :source_of_fund, :string
    add_column :listings, :source_of_fund_currency, :string
    add_column :listings, :source_of_fund_amount, :string


    add_column :listings, :overall_responsibility_project_taken, :string
    add_column :listings, :overall_project_volume_currency, :string
    add_column :listings, :overall_project_volume, :string
    add_column :listings, :use_of_fund, :string
    add_column :listings, :use_of_fund_currency, :string
    add_column :listings, :amount_of_fund, :string
    add_column :listings, :delivery_doesnt_affects_sensitive_areas, :boolean
    add_column :listings, :delivery_affects_natural_reserves, :boolean
    add_column :listings, :delivery_affects_indigenous_people, :boolean
    add_column :listings, :delivery_affects_cultural_heritage, :boolean
    add_column :listings, :delivery_affects_other, :boolean
    add_column :listings, :delivery_affects_other_explain, :string
    add_column :listings, :yes_export_requires_exportlicense, :boolean
    add_column :listings, :no_export_requires_exportlicense, :boolean
    add_column :listings, :which_regulation_requires_exportlicense, :string
    add_column :listings, :exportlicense_status, :string
    add_column :listings, :yes_deliver_secondhand_goods, :boolean
    add_column :listings, :no_dont_deliver_secondhand_goods, :boolean
    add_column :listings, :product_original_date_of_manifacture, :string
    add_column :listings, :product_remaining_life, :string
    add_column :listings, :yes_good_overhauled_before_reselling, :boolean
    add_column :listings, :no_good_arent_overhauled_before_reselling, :boolean
    add_column :listings, :goods_overhauled_location, :string
    add_column :listings, :yes_contract_already_signed_all_parties, :boolean
    add_column :listings, :no_contract_already_signed_all_parties, :boolean
    add_column :listings, :goods_completion_date, :string
    add_column :listings, :companny_internal_id, :string
    add_column :listings, :yes_special_contract_structure, :boolean
    add_column :listings, :no_special_contract_structure, :boolean
    add_column :listings, :explain_special_contract_structure, :string
    add_column :listings, :graphic_representation_project_participants, :string
    add_column :listings, :contract_currency, :string
    add_column :listings, :order_value_export_business_currency, :string
    add_column :listings, :order_value_export_business_currency_amount, :string
    add_column :listings, :total_delivery_value, :string
    add_column :listings, :percentage_of_spare_parts_in_whole_order, :string
    add_column :listings, :more_components_open_to_exporter_currency, :string
    add_column :listings, :more_components_open_to_exporter_amount, :string
    add_column :listings, :more_components_open_to_exporter_explain, :string
    add_column :listings, :ja_customer_counts_interest, :boolean
    add_column :listings, :no_customer_counts_interest, :boolean
    add_column :listings, :interest_currency, :string
    add_column :listings, :interest_amount, :string
    add_column :listings, :yes_price_adjustment_clause, :boolean
    add_column :listings, :no_price_adjustment_clause, :boolean
    add_column :listings, :explain_billing_methods, :string
    add_column :listings, :yes_multiple_deliveries, :boolean
    add_column :listings, :no_multiple_deliveries, :boolean
    add_column :listings, :delivery_start, :string
    add_column :listings, :delivery_end, :string
    add_column :listings, :other_important_delivery_information, :string
    add_column :listings, :other_important_delivery_milestones, :string
    add_column :listings, :payment_term_shortterm, :string
    add_column :listings, :payment_term_middleterm, :string
    add_column :listings, :payment_term_both, :string
    add_column :listings, :downpayment_delivery_currency, :string
    add_column :listings, :downpayment_delivery_amount, :string
    add_column :listings, :downpayment_delivery_description, :string

    add_column :listings, :describe_export_business, :string
    add_column :listings, :reason_for_buying_good, :string
    add_column :listings, :also_provide_service_training, :boolean
    add_column :listings, :product_branch, :string
    add_column :listings, :explain_product_branch, :string
    add_column :listings, :part_of_big_project_yes, :boolean
    add_column :listings, :part_of_big_project_no, :boolean
    add_column :listings, :explain_complete_project, :string

    add_column :listings, :risk_avaline_guarantee, :boolean
    add_column :listings, :risk_contractual_warranty_coverage, :boolean
    add_column :listings, :risk_shipment_risk_cover, :boolean
    add_column :listings, :risk_supplier_credit_cover, :boolean
    add_column :listings, :risk_further_coverage, :boolean

    add_column :listings, :total_financing_required, :string
    add_column :listings, :is_investment_good, :string
    add_column :listings, :contract_value, :string
    add_column :listings, :payment_deadline, :string
    add_column :listings, :private_sector, :boolean
    add_column :listings, :public_sector, :boolean
    
  end
end
