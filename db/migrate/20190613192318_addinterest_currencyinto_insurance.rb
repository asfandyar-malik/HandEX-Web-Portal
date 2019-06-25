class AddinterestCurrencyintoInsurance < ActiveRecord::Migration[5.2]
  def change
      add_column :insurances, :interest_currency, :string
      add_column :insurances, :interest_value, :string
      add_column :insurances, :fixed_interest_rate, :string
      add_column :insurances, :fixed_interest_rate_value, :string
  end
end
