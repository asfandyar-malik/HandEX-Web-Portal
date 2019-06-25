class RemoveRedundantFields < ActiveRecord::Migration[5.2]
  def change
    remove_column :export_applications, :agreed_payments_output_payment_term_short
    remove_column :export_applications, :agreed_payments_output_payment_term_short_2
    remove_column :export_applications, :agreed_payments_output_payment_term_short_3
    remove_column :export_applications, :agreed_payments_output_payment_term_short_4
    remove_column :export_applications, :agreed_payments_output_payment_term_short_5
    remove_column :export_applications, :agreed_payments_output_payment_term_both
    remove_column :insurances, :agreed_payments_output_payment_term_short
    remove_column :insurances, :agreed_payments_output_payment_term_short_2
    remove_column :insurances, :agreed_payments_output_payment_term_short_3
    remove_column :insurances, :agreed_payments_output_payment_term_short_4
    remove_column :insurances, :agreed_payments_output_payment_term_short_5
    remove_column :insurances, :agreed_payments_output_payment_term_both
  end
end
