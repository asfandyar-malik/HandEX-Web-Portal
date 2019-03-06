class RemoveFiledFromInsuranceTable < ActiveRecord::Migration[5.2]
  def change
    remove_column :insurances, :breakfast
  end
end
