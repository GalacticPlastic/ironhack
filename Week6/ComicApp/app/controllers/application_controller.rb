class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :restrict, if: :devise_controller?
  def restrict
  	devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
  end
end