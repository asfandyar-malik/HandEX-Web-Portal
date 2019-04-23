class AddSecurityProviderInfoIntoInsurances < ActiveRecord::Migration[5.2]
  def change
    add_column :insurances, :has_significant_influence_on_security_provider, :boolean
    add_column :insurances, :explain_exporter_influence_on_security_provider, :string
    add_column :insurances, :has_payment_experience_with_security_provider, :boolean
    add_column :insurances, :explain_previous_payment_experience_with_security_provider, :string
  end
end
