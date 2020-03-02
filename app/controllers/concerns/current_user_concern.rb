module CurrentUserConcern
	extend ActiveSupport::Concern

	def current_user
		# super means normal as what devise provide
		super || guest_user
	end

	def guest_user
		# GuestUser is a user-defined model with attr_accessor to have the required fields
		guest = GuestUser.new
		guest.name = "Guest User"
		guest.first_name = "Guest"
		guest.last_name = "User"
		guest.email = "guest@devcamp.com"
		# the last statement of execution is return value
		guest
	end
end