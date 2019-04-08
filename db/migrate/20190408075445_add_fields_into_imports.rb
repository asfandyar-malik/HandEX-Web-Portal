class AddFieldsIntoImports < ActiveRecord::Migration[5.2]
  def change
    add_column :imports, :country, :string
    add_column :imports, :company, :string
    add_column :imports, :description, :string
  end
end