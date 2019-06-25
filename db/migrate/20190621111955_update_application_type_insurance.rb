class UpdateApplicationTypeInsurance < ActiveRecord::Migration[5.2]
  def self.up
    Insurance.update_all("application_type='insurance'")
  end

  def self.down
  end
end
