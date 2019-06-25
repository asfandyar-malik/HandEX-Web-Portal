class DeleteSomeRedundantColumns < ActiveRecord::Migration[5.2]
  def change
    remove_column :export_applications, :overall_project_financing_details_subject_1
    remove_column :export_applications, :overall_project_financing_details_currency_1
    remove_column :export_applications, :overall_project_financing_details_amount_1

    remove_column :export_applications, :overall_project_financing_details_subject_2
    remove_column :export_applications, :overall_project_financing_details_currency_2
    remove_column :export_applications, :overall_project_financing_details_amount_2

    remove_column :export_applications, :overall_project_financing_details_subject_3
    remove_column :export_applications, :overall_project_financing_details_currency_3
    remove_column :export_applications, :overall_project_financing_details_amount_3

    remove_column :export_applications, :subject_origin_overall_project_financing_details_subject_1
    remove_column :export_applications, :subject_origin_overall_project_financing_details_currency_1
    remove_column :export_applications, :subject_origin_overall_project_financing_details_amount_1

    remove_column :export_applications, :subject_origin_overall_project_financing_details_subject_2
    remove_column :export_applications, :subject_origin_overall_project_financing_details_currency_2
    remove_column :export_applications, :subject_origin_overall_project_financing_details_amount_2

    remove_column :export_applications, :subject_origin_overall_project_financing_details_subject_3
    remove_column :export_applications, :subject_origin_overall_project_financing_details_currency_3
    remove_column :export_applications, :subject_origin_overall_project_financing_details_amount_3
  end
end
