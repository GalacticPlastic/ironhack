class SecretsController < ApplicationController
	before_action :get_current_user, :confirm_login, :confirm_admin
	def show
		render :show
	end
end