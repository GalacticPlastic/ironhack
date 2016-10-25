require "sinatra"

menu = {
	"Home" => "",
	"About" => "about",
	"Hi" => "hi",
	"Best Pizza" => "pizza",
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
		:full_name => "Patrick",
		:avatar => "https://pbs.twimg.com/profile_images/790573246596931586/V8uV5TcL_400x400.jpg",
		:screen_name => "@SirPatStew"
	},
	{
		:full_name => "Celine Dion",
		:avatar => "https://pbs.twimg.com/profile_images/733642354565996544/JrzvO3Y7_400x400.jpg",
		:screen_name => "@celinedion"
	},
]
get "/" do
	@menu = menu
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
	# if params[:screen_name] == "starwars"
	# 	@full_name = "Star Wars"
	# 	@avatar = ""
	# 	@screen_name = "@starwars"
	# 	erb(:user_profile)
	# elsif params[:screen_name] == "KevinHart4real"
	# 	@full_name = "Kevin Hart"
	# 	@avatar = ""
	# 	@screen_name = "@KevinHart4real"
	# 	erb(:user_profile)
	# elsif params[:screen_name] == "SirPatStew"
	# 	@full_name = "Patrick Stewart"
	# 	@avatar = ""
	# 	@screen_name = "@SirPatStew"
	# 	erb(:user_profile)
	# end
end