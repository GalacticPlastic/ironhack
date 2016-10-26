require "sinatra"
require "sinatra/reloader" if development?
require "pry" if development?
enable(:sessions)
get "/login" do
	erb(:login)
end
post "/verify_login" do
	# => Logic needed to check credentials, using form params
	if params[:email] == "emau757@gmail.com" && params[:password] == "zosorocks"
		# => Login successful
		session[:user_logged_in] = true
		session[:user_email] = params[:email]
		redirect to ("/my_account")
	else
		@error_message = "Username/password invalid. Please try again."
		erb(:login)
	end
end
menu = {
	"Home" => "",
	"Login" => "login"
}
get "/" do
	@menu = menu
	erb(:home)
end
get "/login" do
	@menu = menu
	erb(:login)
end


PasswordChecker.new.check_password(email, password)