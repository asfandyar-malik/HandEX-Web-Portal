class CreateOnboardings < ActiveRecord::Migration[5.2]
  def change
    create_table :onboardings do |t|

      t.timestamps
    end
  end
end
