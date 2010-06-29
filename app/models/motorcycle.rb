class Motorcycle < Vehicle
	default_scope :conditions => { :class_type => MOTORCYCLE }
end