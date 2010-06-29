class VehicleVersion < ActiveRecord::Base
  belongs_to :vehicle
  
  validates_associated :vehicle
  
	# Friendly URL 
  has_friendly_id :name, :use_slug => true, :approximate_ascii => true
  
  def maker_model_version
  	return self.vehicle.maker.name.upcase + " - " + self.vehicle.model + " - " + self.name
  end
  
  
end
