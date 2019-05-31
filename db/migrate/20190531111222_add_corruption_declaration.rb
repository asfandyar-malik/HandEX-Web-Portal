class AddCorruptionDeclaration < ActiveRecord::Migration[5.2]
    def change
        add_column :export_applications, :does_corruption_declaration_appy, :boolean, default: false
    end
end
