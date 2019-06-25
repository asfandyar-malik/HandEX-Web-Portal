class AddMoreColumnsToInsurances < ActiveRecord::Migration[5.2]
  def change
    add_column :insurances, :exporter_external_rating_available, :boolean
    add_column :insurances, :is_fully_responsible_for_project, :boolean
    add_column :insurances, :project_detailed_description, :string
    rename_column :insurances, :proportion_of_goods_overhauled_aborad, :proportion_of_goods_overhauled_abroad
    add_column :insurances, :importer_tax_id, :string
    add_column :insurances, :explain_sensitive_area_type, :string
    add_column :insurances, :explain_special_structure, :string
    add_column :insurances, :exporter_date_founded, :string
    add_column :insurances, :agreed_payments_currency_payment_term_short_2, :string
    add_column :insurances, :agreed_payments_currency_payment_term_short_3, :string
    add_column :insurances, :agreed_payments_currency_payment_term_short_4, :string
    add_column :insurances, :agreed_payments_currency_payment_term_short_5, :string
    add_column :insurances, :does_corruption_declaration_appy, :boolean, default: false
    add_column :insurances, :are_goods_overhauled, :boolean, default: false
    add_column :insurances, :agreed_payments_amount_payment_term_short_2, :string
    add_column :insurances, :agreed_payments_output_payment_term_short_2, :string
    add_column :insurances, :agreed_payments_time_payment_term_short_2, :string
    add_column :insurances, :agreed_payments_some_output_payment_term_short_2, :string
    add_column :insurances, :agreed_payments_amount_payment_term_short_3, :string
    add_column :insurances, :agreed_payments_output_payment_term_short_3, :string
    add_column :insurances, :agreed_payments_time_payment_term_short_3, :string
    add_column :insurances, :agreed_payments_some_output_payment_term_short_3, :string
    add_column :insurances, :agreed_payments_amount_payment_term_short_4, :string
    add_column :insurances, :agreed_payments_output_payment_term_short_4, :string
    add_column :insurances, :agreed_payments_time_payment_term_short_4, :string
    add_column :insurances, :agreed_payments_some_output_payment_term_short_4, :string
    add_column :insurances, :agreed_payments_amount_payment_term_short_5, :string
    add_column :insurances, :agreed_payments_output_payment_term_short_5, :string
    add_column :insurances, :agreed_payments_time_payment_term_short_5, :string
    add_column :insurances, :agreed_payments_some_output_payment_term_short_5, :string
    add_column :insurances, :does_delivery_affect_sensitive_areas, :string
    add_column :insurances, :exporter_offers_servicing_for_goods, :boolean, default: false
    rename_column :insurances, :importer_company_corporate_form, :importer_mother_company_corporate_form
    add_column :insurances, :importer_mother_company_industry, :string
    add_column :insurances, :is_company_controlled_by_mother_company, :boolean, :default => false
    change_column :insurances, :has_payment_experience_with_importer, :boolean, :default => false
    remove_column :insurances, :is_exporting_to_public_sector
    remove_column :insurances, :is_exporting_to_private_sctor
    add_column :insurances, :is_exporting_to_private_sector, :boolean, :default => false
    change_column :insurances, :exporter_external_rating_available, :boolean, :default => false
    rename_column :insurances, :rating_agency, :exporter_rating_agency
    rename_column :insurances, :rating_issued_date, :exporter_rating_issued_date
    add_column :insurances, :importer_external_rating_available, :boolean, :default => false
  end
end
