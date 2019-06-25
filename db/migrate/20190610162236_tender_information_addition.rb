class TenderInformationAddition < ActiveRecord::Migration[5.2]
    def change
        add_column :export_applications, :taking_part_in_tender, :boolean
        add_column :export_applications, :tender_submission_date, :string
        add_column :insurances, :taking_part_in_tender, :boolean
        add_column :insurances, :tender_submission_date, :string
    end
end
