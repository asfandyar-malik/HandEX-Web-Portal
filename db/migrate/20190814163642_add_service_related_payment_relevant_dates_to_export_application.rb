class AddServiceRelatedPaymentRelevantDatesToExportApplication < ActiveRecord::Migration[5.2]
  def change
    add_column :export_applications, :service_start, :date
    add_column :export_applications, :service_end, :date
    add_column :export_applications, :availability, :date
  end
end
