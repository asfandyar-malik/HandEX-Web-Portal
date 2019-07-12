class ChangeDatatypeFromDecimalToFloat < ActiveRecord::Migration[5.2]
  def change
    remove_column :export_applications, :percentage_of_service_in_whole_order
    remove_column :insurances, :percentage_of_service_in_whole_order
    add_column :export_applications, :percentage_of_service_in_whole_order, :float
    add_column :insurances, :percentage_of_service_in_whole_order, :float
  end
end
