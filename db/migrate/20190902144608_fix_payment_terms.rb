class FixPaymentTerms < ActiveRecord::Migration[5.2]
  def change
    remove_column :export_applications, :payment_term_mid
    remove_column :export_applications, :payment_term_short
    remove_column :export_applications, :payment_term_both

    remove_column :insurances, :payment_term_mid
    remove_column :insurances, :payment_term_short
    remove_column :insurances, :payment_term_both
    
    add_column :insurances, :payment_term, :string
  end
end