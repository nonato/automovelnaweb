class CreateVehicleAdvertisements < ActiveRecord::Migration
  def self.up
    create_table :vehicle_advertisements do |t|
      t.references :customer
      t.references :vehicle_version
      t.integer :year
      t.decimal :price
      t.decimal :km

      t.timestamps
    end
  end

  def self.down
    drop_table :vehicle_advertisements
  end
end
