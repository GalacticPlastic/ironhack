require "sinatra"
require "sinatra/reloader" if development?
require "pry" if development?
enable(:sessions)
# http://localhost:4567/save_to_session/redbull
# http://localhost:4567/save_to_session/Red%20Bull%20vodka
# http://localhost:4567/save_to_session/Starbucks%20Venti%20Iced%20Chai%20Tea%20Latte
get "/save_to_session/:thing" do
	session[:beverage] = params[:thing]
	redirect to("/")
end
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
	"About" => "about",
	"Hi" => "hi",
	"Best Pizza" => "pizza",
	"Current Time" => "current_time",
	"Hours Ago" => "hours_ago"
}
users = [
	{
		:full_name => "Star Wars",
		:avatar => "https://pbs.twimg.com/profile_images/783419325830934528/7Ad49etX_400x400.jpg",
		:screen_name => "@starwars"
	},
	{
		:full_name => "Kevin Hart",
		:avatar => "https://pbs.twimg.com/profile_images/769775481692364801/j5nXOVaH_400x400.jpg",
		:screen_name => "@KevinHart4real"
	},
	{
		:full_name => "Patrick Stewart",
		:avatar => "https://pbs.twimg.com/profile_images/790573246596931586/V8uV5TcL_400x400.jpg",
		:screen_name => "@SirPatStew"
	},
	{
		:full_name => "Celine Dion",
		:avatar => "https://pbs.twimg.com/profile_images/733642354565996544/JrzvO3Y7_400x400.jpg",
		:screen_name => "@celinedion"
	},
]
# binding.pry
get "/" do
	@menu = menu
	@drank = session[:beverage]
	erb(:home)
end
get "/hi" do
	@menu = menu
	erb(:hipage)
end
get "/about" do
	@menu = menu
	erb(:about)
end
get "/pizza" do
	@menu = menu
	@toppings = ["Sausage", "Spinach", "Tomatoes", "Basil", "Blue Cheese"]
	erb(:best_pizza)
end
get "/current_time" do
	@menu = menu
	erb(:current_time)
end
get "/hours_ago" do
	@menu = menu
	erb(:hours_ago)
end
get "/login" do
	@menu = menu
	erb(:login)
end
get "/:screen_name" do
	found_user = users.find do |the_user|
		the_user[:screen_name] == params[:screen_name]
	end
	if found_user == nil
		@screen_name = params[:screen_name]
		erb(:no_user)
	else
		@full_name = [:full_name]
		@avatar = [:avatar]
		@screen_name = [:screen_name]
		erb(:user_profile)
	end
end