class CreateGuarantees < ActiveRecord::Migration[5.2]
    def change
      create_table :guarantees do |t|
        t.string :security_type
        t.string :security_type_name
        t.belongs_to :export_application, foreign_key: true
        t.timestamps
      end
    end
end
