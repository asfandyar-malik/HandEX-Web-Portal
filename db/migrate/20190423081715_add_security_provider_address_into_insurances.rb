class AddSecurityProviderAddressIntoInsurances < ActiveRecord::Migration[5.2]
  def change
    add_column :insurances, :security_provider_address, :string
  end
end
