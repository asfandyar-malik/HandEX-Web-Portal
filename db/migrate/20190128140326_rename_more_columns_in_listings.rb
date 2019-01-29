class RenameMoreColumnsInListings < ActiveRecord::Migration[5.2]
    def change
        rename_column :listings, :supplementary_risk_hausbank_guarantee, :supplementary_risk_housebank_guarantee
        rename_column :listings, :company_province, :exporter_company_province
    end
end