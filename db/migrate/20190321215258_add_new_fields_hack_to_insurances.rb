class AddNewFieldsHackToInsurances < ActiveRecord::Migration[5.2]
  def change
    add_column :insurances, :yes_sonstige_kurzfrist_certificate_of_origin, :boolean, default: false
    add_column :insurances, :no_sonstige_kurzfrist_certificate_of_origin, :boolean, default: false
    add_column :insurances, :yes_security_businnes_provided, :boolean, default: false
    add_column :insurances, :no_security_businnes_provided, :boolean, default: false
    add_column :insurances, :yes_delivered_at_this_address, :boolean, default: false
    add_column :insurances, :no_delivered_at_this_address, :boolean, default: false
    add_column :insurances, :yes_exporter_influence_on_importer_management, :boolean, default: false
    add_column :insurances, :no_exporter_influence_on_importer_management, :boolean, default: false
    add_column :insurances, :yes_previous_payment_experience_with_importer, :boolean, default: false
    add_column :insurances, :no_previous_payment_experience_with_importer, :boolean, default: false
    add_column :insurances, :yes_previously_hermes_insurance_used, :boolean, default: false
    add_column :insurances, :no_previously_hermes_insurance_used, :boolean, default: false
    add_column :insurances, :corruption_declaration_applies, :boolean, default: false
    add_column :insurances, :no_corruption_declaration_applies, :boolean, default: false
    add_column :insurances, :yes_jointventure_with_consortiums, :boolean, default: false
    add_column :insurances, :no_jointventure_with_consortiums, :boolean, default: false
    add_column :insurances, :yes_payment_term_already_agreed, :boolean, default: false
    add_column :insurances, :no_payment_term_already_agreed, :boolean, default: false
  end
end
