class AddTradeInfoReferenceToListing < ActiveRecord::Migration[5.2]
    def change
        add_reference :listings, :tradeinfo, foreign_key: true
    end
end