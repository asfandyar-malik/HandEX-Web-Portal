class RemoveMoreColumnsInInsurances < ActiveRecord::Migration[5.2]
  def change
    remove_column :insurances, :city
    remove_column :insurances, :accommodates
  end
end
