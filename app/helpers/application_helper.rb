module ApplicationHelper
	def sample_helper
		"<p>i am a sample helper, shared for views, run ruby to dym create html content</p>".html_safe
	end
	def login_helper
		if current_user.is_a?(User)
	      link_to "Logout", destroy_user_session_path, method: :delete
	    else
	      (link_to "Register", new_user_registration_path) +
	      "<br>".html_safe +
	      (link_to "Login", new_user_session_path)
	    end
	end
end
