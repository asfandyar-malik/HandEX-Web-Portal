class AddTradeinfoRefToOfficialDocuments < ActiveRecord::Migration[5.2]
  def change
    add_reference :officialdocuments, :tradeinfo, foreign_key: true
  end
end
