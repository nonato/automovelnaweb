class User < ActiveRecord::Base
	validates_presence_of :name, :cpf, :home_phone	
	# types of Users
	CUSTOMER = 1
end
