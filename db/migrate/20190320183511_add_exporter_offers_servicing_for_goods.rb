class AddExporterOffersServicingForGoods < ActiveRecord::Migration[5.2]
  def change
    add_column :insurances, :yes_exporter_offers_servicing_for_goods, :boolean
    add_column :insurances, :no_exporter_offers_servicing_for_goods, :boolean
    remove_column :insurances, :yes_residualriskapetite_five
    remove_column :insurances, :no_residualriskapetite_five
    remove_column :insurances, :yes_already_completed_transaction
    remove_column :insurances, :no_already_completed_transaction
    remove_column :insurances, :importer_tax_number
    remove_column :insurances, :loan_duration
    remove_column :insurances, :contract_value
    remove_column :insurances, :is_investment_good
    remove_column :insurances, :exporter_offers_servicing_for_goods
  end
end