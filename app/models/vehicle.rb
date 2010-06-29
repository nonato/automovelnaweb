class Vehicle < ActiveRecord::Base
  belongs_to :maker
  has_many :vehicle_versions

	validates_associated :maker
	  
	# Friendly URL 
  has_friendly_id :model, :use_slug => true, :approximate_ascii => true

  # type of vehicles
  CAR = 1
  MOTORCYCLE = 2
end
