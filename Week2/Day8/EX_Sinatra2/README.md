More Sinatra!
=============================================================
Autoreloader gem allows you to not have to quit and restart the server for every little change.

Pry in Sinatra works even in routes and views!
How to Change 404 for Custom Status:
```ruby
	get "/foo" do
		status(418)
		"I'm a tea pot!"
	end
```

HTTP is a stateless protocol.
Does not remember any previous data in a request.

Cookies stalk you across cyber space. Marketing's wet dream.