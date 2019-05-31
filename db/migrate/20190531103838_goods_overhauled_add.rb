class GoodsOverhauledAdd < ActiveRecord::Migration[5.2]
  def change
    add_column :export_applications, :are_goods_overhauled, :boolean, default: false
  end
end
