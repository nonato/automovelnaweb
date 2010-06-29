class CreateVehicleVersions < ActiveRecord::Migration
  def self.up
    create_table :vehicle_versions do |t|
      t.string :name
      t.references :vehicle

      t.timestamps
    end
  end

  def self.down
    drop_table :vehicle_versions
  end
end
