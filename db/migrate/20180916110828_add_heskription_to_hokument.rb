class AddHeskriptionToHokument < ActiveRecord::Migration[5.2]
  def change
    add_column :hokuments, :heskription, :string
  end
end
