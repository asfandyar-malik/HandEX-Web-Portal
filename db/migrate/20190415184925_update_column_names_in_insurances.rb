class UpdateColumnNamesInInsurances < ActiveRecord::Migration[5.2]
  def change
    rename_column :insurances, :does_deliver_secondhand_goods, :are_secondhand_goods_delivered
  end
end
