class AddSourceColumnslumnsToInsurance < ActiveRecord::Migration[5.2]
  def change
    add_column :insurances, :source_of_fund, :string
    add_column :insurances, :source_of_fund_currency, :string
    add_column :insurances, :source_of_fund_amount, :string
  end
end
