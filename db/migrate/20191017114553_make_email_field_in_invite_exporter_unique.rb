class MakeEmailFieldInInviteExporterUnique < ActiveRecord::Migration[5.2]
    def change
        add_index :invite_exporters, :exporter_email, unique: true
    end
end
