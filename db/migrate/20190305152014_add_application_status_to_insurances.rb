class AddApplicationStatusToInsurances < ActiveRecord::Migration[5.2]
  def change
    add_column :insurances, :application_status, :string
  end
end
