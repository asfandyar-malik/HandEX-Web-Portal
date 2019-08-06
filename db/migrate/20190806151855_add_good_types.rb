class AddGoodTypes < ActiveRecord::Migration[5.2]
  def change
    add_column :export_applications, :exported_goods_type_two, :string
    add_column :export_applications, :exported_goods_type_three, :string
    add_column :export_applications, :exported_goods_type_four, :string
    add_column :insurances, :exported_goods_type_two, :string
    add_column :insurances, :exported_goods_type_three, :string
    add_column :insurances, :exported_goods_type_four, :string
  end
end
