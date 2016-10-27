require_relative "../lib/post.rb"
require "rspec"
require "rack/test"

RSpec.describe Post do
	# include Rack::Test::Methods
	# def app
	# 	Sinatra::Application
	# end

	before(:each) do
		@post1 = Post.new()
		@post2 = Post.new()
	end
	# => Add testing scenarios HERE, within the describe!!
	it "#title returns post title" do
		# get ""
		expect(@post1.title).to #eq() ??
		expect(@post2.title).to #eq() ??
	end
	it "#date returns post date" do
		get ""
	# 	expect().to #eq() ??
	end
	it "#content returns post content" do
		get ""
	# 	expect().to #eq() ??
	end
	it "#author returns post author" do
		get ""
	# 	expect().to #eq() ??
	end
	it "#category returns post category" do
		get ""
	# 	expect().to #eq() ??
	end
end

# => Title
# => Content
# => Date Published
# => Author
# => Category
# => Tags