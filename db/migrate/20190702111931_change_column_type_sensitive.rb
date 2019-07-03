class ChangeColumnTypeSensitive < ActiveRecord::Migration[5.2]
  def change
    change_column :export_applications, :does_delivery_affect_sensitive_areas, 'boolean USING CAST(does_delivery_affect_sensitive_areas AS boolean)'
  end
end
