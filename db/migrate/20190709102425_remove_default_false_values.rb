class RemoveDefaultFalseValues < ActiveRecord::Migration[5.2]
  def change
    change_column_default :export_applications, :is_export_licence_needed, nil
    change_column_default :export_applications, :has_accepted_terms_conditions, nil
  end
end
