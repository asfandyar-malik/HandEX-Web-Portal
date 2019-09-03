class CreatePrefills < ActiveRecord::Migration[5.2]
  def change
    create_table :prefills do |t|

      t.timestamps
    end
  end
end
