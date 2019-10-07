class CreateDocusigns < ActiveRecord::Migration[5.2]
  def change
    create_table :docusigns do |t|

      t.timestamps
    end
  end
end
