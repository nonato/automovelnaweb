class Customer < User
	
	default_scope :conditions => { :class_type => CUSTOMER }
end
