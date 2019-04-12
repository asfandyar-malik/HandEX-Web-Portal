class AddApplicationStatusIntoInsurances < ActiveRecord::Migration[5.2]
  def change
    add_column :insurances, :application_status, :string, default: 'new'
  end
end
