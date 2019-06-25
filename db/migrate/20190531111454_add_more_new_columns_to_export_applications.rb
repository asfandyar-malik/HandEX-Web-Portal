class AddMoreNewColumnsToExportApplications < ActiveRecord::Migration[5.2]
  def change
    add_column :export_applications, :agreed_payments_currency_payment_term_short_2, :string
    add_column :export_applications, :agreed_payments_currency_payment_term_short_3, :string
    add_column :export_applications, :agreed_payments_currency_payment_term_short_4, :string
    add_column :export_applications, :agreed_payments_currency_payment_term_short_5, :string
  end
end
