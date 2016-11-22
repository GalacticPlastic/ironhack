class SessionsController < ApplicationController
	def new
		render :new
	end
	def create
		user_confirm = User.find_by(email: params[:email])
		if user_confirm && user_confirm.authenticate(params[:password])
			session[:user_id] = user_confirm.id
			redirect_to "/"
		else
			redirect_to "/login"
		end
	end
	# def destroy
	# 	render :index ?
	# end
end