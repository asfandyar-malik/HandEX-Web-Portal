class AddKycThreeColumnsToInsurances < ActiveRecord::Migration[5.2]
  def change
    add_column :insurances, :describe_export_business, :string
    add_column :insurances, :reason_for_buying_good, :string
    add_column :insurances, :also_provide_service_training, :boolean
    add_column :insurances, :product_branch, :string
    add_column :insurances, :explain_product_branch, :string
    add_column :insurances, :part_of_big_project_yes, :boolean
    add_column :insurances, :part_of_big_project_no, :boolean
    add_column :insurances, :explain_complete_project, :string
  end
end
