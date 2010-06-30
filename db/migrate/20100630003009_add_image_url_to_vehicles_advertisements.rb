class AddImageUrlToVehiclesAdvertisements < ActiveRecord::Migration
  def self.up
    add_column :vehicle_advertisements, :image_url, :string
  end

  def self.down
    remove_column :vehicle_advertisements, :image_url
  end
end
