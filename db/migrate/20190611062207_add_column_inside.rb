class AddColumnInside < ActiveRecord::Migration[5.2]
  def change
    add_column :insurances, :downpayment_delivery_description_payment_term_both, :string
    add_column :export_applications, :downpayment_delivery_description_payment_term_both, :string
  end
end
