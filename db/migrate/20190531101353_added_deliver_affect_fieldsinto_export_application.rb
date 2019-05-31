class AddedDeliverAffectFieldsintoExportApplication < ActiveRecord::Migration[5.2]
  def change
    add_column :export_applications, :does_delivery_affect_sensitive_areas, :string
  end
end
