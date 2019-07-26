class AddDeliveredAtThisAddress < ActiveRecord::Migration[5.2]
  def change
    add_column :importer_informations, :is_delivered_at_this_address, :string
    add_column :importer_informations, :belongs_to_private_sector, :boolean
    add_column :importer_informations, :importer_industry, :string
    remove_column :importer_informations, :has_payment_experience_with_importer
    add_column :importer_informations, :has_payment_experience_with_importer, :boolean
    add_column :importer_informations, :importer_tax_id, :string
    add_column :importer_informations, :importer_company_registration_number, :string
    add_column :importer_informations, :importer_external_rating_available, :boolean
    add_column :importer_informations, :importer_rating, :string
    add_column :importer_informations, :importer_rating_agency, :string
    add_column :importer_informations, :importer_rating_issued_date, :string
    add_column :importer_informations, :is_company_controlled_by_mother_company, :boolean
  end
end
