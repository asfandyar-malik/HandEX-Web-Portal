class AddPercentagOfServiceInWholeOrderToEnsuranceFunnel < ActiveRecord::Migration[5.2]
  def change
    add_column :insurances, :percentage_of_service_in_whole_order, :decimal
  end
end
