require_relative "../lib/blog.rb"
require "rspec"
require "rack/test"

RSpec.describe Blog do
	# include Rack::Test::Methods
	# def app
	# 	Sinatra::Application
	# end
	before(:each) do
		@blog = Blog.new()
	end
	# => Add testing scenarios HERE, within the describe!!
	it "#posts returns list of posts" do
		get ""
		expect(@blog.posts).to #eq() ??
	end
	# it "" do
	# 	get ""
	# 	expect().to eq()
	# end
end