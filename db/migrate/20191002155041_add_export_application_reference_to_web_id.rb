class AddExportApplicationReferenceToWebId < ActiveRecord::Migration[5.2]
    def change
        add_reference :webids, :export_application, foreign_key: true
    end
end