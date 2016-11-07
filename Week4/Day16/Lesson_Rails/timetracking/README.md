Intro to Rails
-----------------
 1. Add Route.
 	/config/routes.rb:
	
	```Ruby
	Rails.application.routes.draw do
	# get("/", {to: => "site#home"})
	# get("/", {to: "site#home"})
	# get "/", {to: "site#home"}
	  get "/", to: "site#home"
	  # GSet is a method. All 4 syntax variations above do the same thing in Ruby.
	  # Get as a method receives 2 arguments.
	  get "/about", to: "site#about"
	end
	```
	All pages added here.
	For details on the DSL available within this file, see guides.rubyonrails.org/routing.html

 2. Create Controller.
	$ rails generate controller site
	Rails generate command helps create the different pieces of the app.

	"site" is a controller.
	"home" is the action.
	"get" is the HTTP verb.
	"/" is the URI.

	The controller is a class. Deciding which pages belong to which controller is done thematically (highly subjective).

 3. Add Action / Method.
	"$ rails generate controller site" created two Ruby classes in /app/controllers/ :
	- application_controller.rb
	- site_controller.rb

 4. Create View.
	Site_controller.rb expects the view file to be located at /app/views/site/.
	Ex: /app/views/site/home.html.erb

Run the application by typing in "rails server" into the terminal.
Then visit http://localhost:3000

Views/layouts/application.html.erb is the page template file.

Generate creates files, destroy removes them.


Naming Conventions:
Action name = Template File name