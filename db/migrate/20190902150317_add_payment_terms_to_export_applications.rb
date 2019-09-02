class AddPaymentTermsToExportApplications < ActiveRecord::Migration[5.2]
  def change
    add_column :export_applications, :payment_term, :string
  end
end
