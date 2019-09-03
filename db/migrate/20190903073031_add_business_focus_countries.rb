class AddBusinessFocusCountries < ActiveRecord::Migration[5.2]
  def change
    add_column :export_applications, :business_focus_country_one, :string
    add_column :export_applications, :business_focus_country_two, :string
    add_column :export_applications, :business_focus_country_three, :string
    add_column :export_applications, :business_focus_country_four, :string
    add_column :export_applications, :business_focus_country_five, :string
  end
end
