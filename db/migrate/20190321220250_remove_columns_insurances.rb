class RemoveColumnsInsurances < ActiveRecord::Migration[5.2]
  def change
    remove_column :insurances, :accept_terms_conditions
    remove_column :insurances, :read_privacy_policy
    remove_column :insurances, :read_all_instructions
    remove_column :insurances, :payment_term_shortterm
    remove_column :insurances, :payment_term_middleterm
    remove_column :insurances, :payment_term_both
  end
end
