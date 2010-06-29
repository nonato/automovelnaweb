class VehicleAdvertisement < ActiveRecord::Base
  belongs_to :customer
  belongs_to :vehicle_version
end
