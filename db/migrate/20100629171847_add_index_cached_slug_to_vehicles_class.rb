class AddIndexCachedSlugToVehiclesClass < ActiveRecord::Migration
  def self.up
  	add_index  :makers, :cached_slug
  	add_index  :vehicle_versions, :cached_slug
  	add_index  :vehicles, :cached_slug
  end

  def self.down
  end
end
