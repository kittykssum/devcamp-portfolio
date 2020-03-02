class GuestUser < User
	# attr_accessor provides ability for this class to have data, getter, setter
	attr_accessor :name, :first_name, :last_name, :email
end