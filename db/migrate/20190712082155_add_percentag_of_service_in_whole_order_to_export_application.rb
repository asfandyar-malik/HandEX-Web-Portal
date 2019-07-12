class AddPercentagOfServiceInWholeOrderToExportApplication < ActiveRecord::Migration[5.2]
  def change
    add_column :export_applications, :percentage_of_service_in_whole_order, :decimal
  end
end
