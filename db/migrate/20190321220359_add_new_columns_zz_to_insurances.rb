class AddNewColumnsZzToInsurances < ActiveRecord::Migration[5.2]
  def change
    add_column :insurances, :accept_terms_conditions, :boolean, default: false
    add_column :insurances, :read_privacy_policy, :boolean, default: false
    add_column :insurances, :read_all_instructions, :boolean, default: false
    add_column :insurances, :payment_term_shortterm, :boolean, default: false
    add_column :insurances, :payment_term_middleterm, :boolean, default: false
    add_column :insurances, :payment_term_both, :boolean, default: false
  end
end