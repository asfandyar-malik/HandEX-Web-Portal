class CreateInviteImporters < ActiveRecord::Migration[5.2]
  def change
    create_table :invite_importers do |t|

      t.timestamps
    end
  end
end
