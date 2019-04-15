class FixColumnNames < ActiveRecord::Migration[5.2]
  def change
    rename_column :insurances, :receive_deposit_time, :receive_deposit_time_payment_term_mid
    rename_column :insurances, :repayment_profile_structure, :repayment_profile_structure_payment_term_mid
    rename_column :insurances, :loan_term_start, :loan_term_start_payment_term_mid
    rename_column :insurances, :loan_term_other_description, :loan_term_other_description_payment_term_mid
    add_column :insurances, :number_of_installments_payment_term_mid, :integer
  end
end