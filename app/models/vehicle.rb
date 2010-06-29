class Vehicle < ActiveRecord::Base
  belongs_to :maker
  
	# Friendly URL 
  has_friendly_id :model, :use_slug => true, :approximate_ascii => true

  # type of vehicles
  CAR = 1
  MOTORCYCLE = 2
end
