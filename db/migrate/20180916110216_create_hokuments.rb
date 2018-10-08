class CreateHokuments < ActiveRecord::Migration[5.2]
  def change
    create_table :hokuments do |t|

      t.timestamps
    end
  end
end