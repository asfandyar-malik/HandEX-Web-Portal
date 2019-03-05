class CreateInsurances < ActiveRecord::Migration[5.2]
  def change

    enable_extension 'citext'

    create_table :insurances do |t|
      t.timestamps
    end

  end
end