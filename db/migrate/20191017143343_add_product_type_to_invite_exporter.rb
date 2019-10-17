class AddProductTypeToInviteExporter < ActiveRecord::Migration[5.2]
  def change
    add_column :invite_exporters, :product_type, :string
  end
end
