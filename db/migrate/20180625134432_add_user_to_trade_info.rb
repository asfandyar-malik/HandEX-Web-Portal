class AddUserToTradeInfo < ActiveRecord::Migration[5.2]
  def change
      add_reference :tradeinfos, :user, foreign_key: true
  end
end 