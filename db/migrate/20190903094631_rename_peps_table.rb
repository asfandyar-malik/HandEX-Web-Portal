class RenamePepsTable < ActiveRecord::Migration[5.2]
  def change
      rename_table :pep, :peps
  end
end
