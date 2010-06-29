class Car < Vehicle
	default_scope :conditions => { :class_type => CAR }
end