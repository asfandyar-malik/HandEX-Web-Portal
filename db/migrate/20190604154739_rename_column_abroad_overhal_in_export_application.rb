class RenameColumnAbroadOverhalInExportApplication < ActiveRecord::Migration[5.2]
  def change
    rename_column :export_applications, :proportion_of_goods_overhauled_aborad, :proportion_of_goods_overhauled_abroad
  end
end
