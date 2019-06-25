class AddSubjectOriginOverallProjectFinancingDetailsToExportApplication < ActiveRecord::Migration[5.2]
  def change
    # BACK-388
    add_column :export_applications, :subject_origin_overall_project_financing_details_subject_1, :string
    add_column :export_applications, :subject_origin_overall_project_financing_details_currency_1, :string
    add_column :export_applications, :subject_origin_overall_project_financing_details_amount_1, :string

    add_column :export_applications, :subject_origin_overall_project_financing_details_subject_2, :string
    add_column :export_applications, :subject_origin_overall_project_financing_details_currency_2, :string
    add_column :export_applications, :subject_origin_overall_project_financing_details_amount_2, :string

    add_column :export_applications, :subject_origin_overall_project_financing_details_subject_3, :string
    add_column :export_applications, :subject_origin_overall_project_financing_details_currency_3, :string
    add_column :export_applications, :subject_origin_overall_project_financing_details_amount_3, :string
  end
end
