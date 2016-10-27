require "sinatra"

get "/" do
	"Hello, world!"
end
get "/real_page" do
	"The Other Page"
end
get "/hi" do
	redirect to ("/real_page")
end