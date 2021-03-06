module ApplicationHelper
	def sample_helper
		content_tag(:div, "sample helper shared for views, ruby dym content_tag", class: "my-class")
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
	def source_helper(layout_name)
		if session[:source]
			greeting = "Thanks for ving me from #{session[:source]} on #{layout_name}"
      		content_tag(:p, greeting, class: "source-greeting")
      	end
    end
end
