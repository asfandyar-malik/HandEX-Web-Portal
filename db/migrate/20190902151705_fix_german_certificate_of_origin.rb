class FixGermanCertificateOfOrigin < ActiveRecord::Migration[5.2]
  def change
    remove_column :export_applications, :has_german_certificate_of_origin
    remove_column :export_applications, :has_german_certificate_of_origin_for_only_parts_of_good
    remove_column :insurances, :has_german_certificate_of_origin
    remove_column :insurances, :has_german_certificate_of_origin_for_only_parts_of_good
	add_column :export_applications, :german_certificate_of_origin_status, :string
    add_column :insurances, :german_certificate_of_origin_status, :string
  end
end
