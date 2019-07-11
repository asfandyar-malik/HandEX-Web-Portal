class AddRegistrationCodeToInsuranceFunnel < ActiveRecord::Migration[5.2]
  def change
    add_column :insurances, :registration_court, :string
  end
end
