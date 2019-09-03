class AddApplicationTypeToPrefill < ActiveRecord::Migration[5.2]
  def change
	  add_column :prefills, :application_type,:string
  end
end
