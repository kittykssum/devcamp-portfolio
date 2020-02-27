module CurrentUserConcern
	extend ActiveSupport::Concern

	def current_user
		# super means normal as what devise provide
		super || guest_user
	end

	def guest_user
		OpenStruct.new(name: "Guest User", 
					   first_name: "Guest", 
					   last_name: "User", 
					   email: "guest@devcamp.com"
					   )
	end
end