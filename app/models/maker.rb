class Maker < ActiveRecord::Base
	has_many :vehicles, :dependent => :destroy 
	
	
end
