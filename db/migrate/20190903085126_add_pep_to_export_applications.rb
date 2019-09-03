class AddPepToExportApplications < ActiveRecord::Migration[5.2]
  def change
    add_column :export_applications, :does_pep_exist, :boolean
    add_column :export_applications, :numer_of_pep, :integer
    
    create_table :pep do |t|
	    t.string :last_name
	    t.string :first_name
	    t.string :date_of_birth
	    t.string :address
	    t.string :why_pep_relevant
	    t.belongs_to :export_application, foreign_key: true
	    t.timestamps
    end
  end
end