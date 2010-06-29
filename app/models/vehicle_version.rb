class VehicleVersion < ActiveRecord::Base
  belongs_to :vehicle
  
	# Friendly URL 
  has_friendly_id :name, :use_slug => true, :approximate_ascii => true
end
