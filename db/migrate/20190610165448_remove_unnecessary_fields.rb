class RemoveUnnecessaryFields < ActiveRecord::Migration[5.2]
  def change
    remove_column :insurances, :downpayment_delivery_description_payment_term_short
    remove_column :insurances, :downpayment_delivery_description_payemnt_term_both
    remove_column :export_applications, :downpayment_delivery_description_payment_term_short
    remove_column :export_applications, :downpayment_delivery_description_payemnt_term_both
  end
end