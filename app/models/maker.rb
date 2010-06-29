class Maker < ActiveRecord::Base
	has_many :vehicles, :dependent => :destroy 
	
	# Friendly URL 
	has_friendly_id :name, :use_slug => true, :approximate_ascii => true
	
end
