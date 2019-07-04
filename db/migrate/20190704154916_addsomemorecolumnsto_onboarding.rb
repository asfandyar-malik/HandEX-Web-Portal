class AddsomemorecolumnstoOnboarding < ActiveRecord::Migration[5.2]
  def change
    add_column :onboardings, :business_activity_explanation, :text
    add_column :onboardings, :change_corporate_purpose, :boolean
    add_column :onboardings, :change_corporate_purpose, :boolean
    add_column :onboardings, :change_corporate_purpose_how, :string
    add_column :onboardings, :see_your_self_as, :string
    add_column :onboardings, :countries_of_main_business_activities, :text
    add_column :onboardings, :most_important_customer_name, :string
    add_column :onboardings, :most_important_customer_country, :string
    add_column :onboardings, :most_important_customer_volume, :integer
    add_column :onboardings, :most_important_supplier_name, :string
    add_column :onboardings, :most_important_supplier_country, :string
    add_column :onboardings, :most_important_supplier_volume, :integer
    add_column :onboardings, :usual_payment_behaviour_supplier_buyer, :string
    add_column :onboardings, :order_amount_backlog, :integer
    add_column :onboardings, :months_to_complete_backlog, :integer
    add_column :onboardings, :expected_revenues_this_year, :integer
    add_column :onboardings, :percentage_share_export_revenue_lastyear, :integer
    add_column :onboardings, :percentage_share_export_revenue_previousyear, :integer
    add_column :onboardings, :percentage_share_export_revenue_eu, :integer
    add_column :onboardings, :percentage_share_export_revenue_othercountries, :integer
    add_column :onboardings, :expected_ebit_this_year, :integer
    add_column :onboardings, :expected_net_income_this_year, :integer
    add_column :onboardings, :explanation_of_dunning_process, :text
    add_column :onboardings, :is_any_default_last_two_year, :boolean
    add_column :onboardings, :default_last_two_year_explain, :text
    add_column :onboardings, :is_any_external_rating, :boolean
    add_column :onboardings, :external_rating_specify, :string
  end
end
