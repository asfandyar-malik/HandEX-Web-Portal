class AddServicesNotVisibleToCustomerToInsuranceFunnel < ActiveRecord::Migration[5.2]
  def change
    add_column :insurances, :services_not_visible_to_customer, :string
  end
end
