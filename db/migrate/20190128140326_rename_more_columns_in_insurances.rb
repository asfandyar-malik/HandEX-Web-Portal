class RenameMoreColumnsInInsurances < ActiveRecord::Migration[5.2]
    def change
        rename_column :insurances, :supplementary_risk_hausbank_guarantee, :supplementary_risk_housebank_guarantee
        rename_column :insurances, :company_province, :exporter_company_province
    end
end