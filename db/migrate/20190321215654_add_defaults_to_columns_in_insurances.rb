class AddDefaultsToColumnsInInsurances < ActiveRecord::Migration[5.2]
  def change
    change_column :insurances, :application_status, :string, default: 'new'
  end
end