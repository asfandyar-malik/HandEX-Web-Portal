class CreateListings < ActiveRecord::Migration[5.2]
  def change
    enable_extension 'citext'

    create_table :listings do |t|
      t.jsonb :listing_json, null: false, default: {}

      t.timestamps
    end

    add_index  :listings, :listing_json, using: :gin
  end
end
