class CreateRefinances < ActiveRecord::Migration[5.2]
  def change
    create_table :refinances do |t|

      t.timestamps
    end
  end
end
