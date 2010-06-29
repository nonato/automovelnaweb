class Vehicle < ActiveRecord::Base
  belongs_to :maker
  
  # type of vehicles
  CAR = 1
  MOTORCYCLE = 2
end
