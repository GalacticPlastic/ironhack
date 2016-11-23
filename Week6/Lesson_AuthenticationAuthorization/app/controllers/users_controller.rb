class UsersController < ApplicationController
	before_action :get_current_user, only: [:home, :index, :show]
	before_action :confirm_login, only: [:index, :show]
	before_action :confirm_admin, only: [:index]
	def home
		# @name = current_user ? @current_user.username : "Ironhacker"
		# Logic moved to /app/controllers/application_controller.rb
		# get_current_user		# => Refactored with before_action call.
		render :home
	end
	def index
		# get_current_user		# => Refactored with before_action call.
		@users = User.all
		render :index
	end
	def new
		if session[:user_id]
			flash[:login_success] = "You already have an account."
			redirect_to "/"
		else
			render :new
		end
	end
	def show
		# get_current_user		# => Refactored with before_action call.
		render :show
	end
	def create
		user = User.new(user_params)
		if user.save
			redirect_to '/'
		else
	  		redirect_to '/signup'
		end
  	end   
  	private
  	def user_params
		params.require(:user).permit(:username, :email, :password, :password_confirmation)
  	end
end