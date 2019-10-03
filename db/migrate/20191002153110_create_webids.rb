class CreateWebids < ActiveRecord::Migration[5.2]
  def change
    create_table :webids do |t|

      t.timestamps
    end
  end
end
