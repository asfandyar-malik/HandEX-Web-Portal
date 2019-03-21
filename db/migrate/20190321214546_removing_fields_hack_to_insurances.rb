class RemovingFieldsHackToInsurances < ActiveRecord::Migration[5.2]
  def change
    remove_column :insurances, :yes_sonstige_kurzfrist_certificate_of_origin
    remove_column :insurances, :no_sonstige_kurzfrist_certificate_of_origin
    remove_column :insurances, :yes_security_businnes_provided
    remove_column :insurances, :no_security_businnes_provided
    remove_column :insurances, :yes_delivered_at_this_address
    remove_column :insurances, :no_delivered_at_this_address
    remove_column :insurances, :yes_exporter_influence_on_importer_management
    remove_column :insurances, :no_exporter_influence_on_importer_management
    remove_column :insurances, :yes_previous_payment_experience_with_importer
    remove_column :insurances, :no_previous_payment_experience_with_importer
    remove_column :insurances, :yes_previously_hermes_insurance_used
    remove_column :insurances, :no_previously_hermes_insurance_used
    remove_column :insurances, :corruption_declaration_applies
    remove_column :insurances, :no_corruption_declaration_applies
    remove_column :insurances, :yes_jointventure_with_consortiums
    remove_column :insurances, :no_jointventure_with_consortiums
    remove_column :insurances, :yes_payment_term_already_agreed
    remove_column :insurances, :no_payment_term_already_agreed
  end
end
