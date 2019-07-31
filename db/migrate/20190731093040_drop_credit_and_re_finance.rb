class DropCreditAndReFinance < ActiveRecord::Migration[5.2]
  def change
    drop_table :credits
    drop_table :refinances
  end
end