class AddWantInsuranceToFinancials < ActiveRecord::Migration[5.2]
  def change
    add_column :financials, :want_insurance, :boolean
  end
end
