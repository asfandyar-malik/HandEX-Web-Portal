class ChangeDataTypeOfColumnsFromDateToString < ActiveRecord::Migration[5.2]
  def change
    remove_column :export_applications, :service_start, :date
    remove_column :export_applications, :service_end, :date
    remove_column :export_applications, :availability, :date
    remove_column :insurances, :service_start, :date
    remove_column :insurances, :service_end, :date
    remove_column :insurances, :availability, :date
    add_column :export_applications, :service_start, :string
    add_column :export_applications, :service_end, :string
    add_column :export_applications, :availability, :string
    add_column :insurances, :service_start, :string
    add_column :insurances, :service_end, :string
    add_column :insurances, :availability, :string
  end
end
