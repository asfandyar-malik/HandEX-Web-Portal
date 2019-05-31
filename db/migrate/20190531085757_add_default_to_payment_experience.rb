class AddDefaultToPaymentExperience < ActiveRecord::Migration[5.2]
  def change
    change_column :export_applications, :has_payment_experience_with_importer, :boolean, :default => false
  end
end
