class AddTradeInfoToDocument < ActiveRecord::Migration[5.2]
  def change
    add_reference :documents, :tradeinfo, foreign_key: true
  end
end