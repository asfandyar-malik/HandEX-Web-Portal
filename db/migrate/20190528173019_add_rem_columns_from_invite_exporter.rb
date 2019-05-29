class AddRemColumnsFromInviteExporter < ActiveRecord::Migration[5.2]
    def change
        add_column :invite_exporters, :exporter_company_name, :string
        add_column :invite_exporters, :exporter_representative_name, :string
        remove_column :invite_exporters, :exporter_representative_firstname
    end
end
