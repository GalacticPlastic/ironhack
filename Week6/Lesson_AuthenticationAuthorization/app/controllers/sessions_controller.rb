class SessionsController < ApplicationController
	def new
		if session[:user_id]
			flash[:login_success] = "You have already logged in."
			redirect_to "/"
		else
			render :new
		end
	end
	def create
		user_confirm = User.find_by(email: params[:email])
		if user_confirm && user_confirm.authenticate(params[:password])
			session[:user_id] = user_confirm.id
			flash[:login_success] = "You have logged in successfully."
			redirect_to "/"
		else
			redirect_to "/login"
		end
	end
	def destroy
		# session[:user_id] = nil
		session.clear
		redirect_to "/"
	end
end