class ApplicationController < ActionController::Base
	# Prevent CSRF attacks by raising an exception.
	# For APIs, you may want to use :null_session instead.
	protect_from_forgery with: :exception
	# helper_method :current_user
	def get_current_user
		@current_user = User.find_by(id: session[:user_id])
		if @current_user == nil
			@name = "Ironhacker"
		else
			@name = @current_user.username
		end
	end
	def confirm_login
  		# Same as JS console.log();
  		# p session[:user_id]
  		if session[:user_id] == nil
			flash[:must_login_message] = "Must be logged in to view this page."
			redirect_to "/login"
		end
  	end
  	def confirm_admin
		if @current_user && @current_user.role != "admin"
			flash[:admin_only] = "Must have administrative privileges to access this page."
		end
  	end
end
# Private methods do not inherit.
# Give access to everything.
# Gem Devise