class CreateOfficialdocuments < ActiveRecord::Migration[5.2]
  def change
    create_table :officialdocuments do |t|

      t.timestamps
    end
  end
end
