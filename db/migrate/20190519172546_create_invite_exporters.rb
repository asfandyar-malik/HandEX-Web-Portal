class CreateInviteExporters < ActiveRecord::Migration[5.2]
  def change
    create_table :invite_exporters do |t|
      t.timestamps
    end
  end
end
