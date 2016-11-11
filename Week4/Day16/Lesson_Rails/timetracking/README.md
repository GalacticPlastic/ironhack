Intro to Rails
-----------------
 1. Create a New Rails Application.
  	```
  	$ rails new Folder_Name
  	```

 2. Create a New Database.
   	```
  	$ rails db:create
  	```

  	If you screw up, nuke the DB and start over:
  	- db:drop
  	- db:create
  	- db:migrate

 3. Add Route.
 	/config/routes.rb:
	
	```Ruby
	Rails.application.routes.draw do
	# get("/", {to: => "site#home"})
	# get("/", {to: "site#home"})
	# get "/", {to: "site#home"}
	  get "/", to: "site#home"
	  # Get is a method. All 4 syntax variations above do the same thing in Ruby.
	  # Get as a method receives 2 arguments.
	  get "/about", to: "site#about"
	end
	```
	All pages added here.
	For details on the DSL available within this file, see *guides.rubyonrails.org/routing.html*.

 4. Create Controller.
	The controller is a class. Deciding which pages belong to which controller is done thematically (highly subjective).

	```
	$ rails generate controller site
	```
	Created two Ruby classes in /app/controllers/ :
	- application_controller.rb
	- site_controller.rb

	Rails generate command helps create the different pieces of the app.
	- **site** is a controller.
	- **home** is the action.
	- **get** is the HTTP verb.
	- **/** is the URI.

 5. Add Action / Method.

	Add the following to the SiteController class inside /app/controllers/site_controller.rb:
	```Ruby
	class SiteController < ApplicationController
		def home
			render 'home' # Render :name is always the same name as the view template
			# Can also use this syntax:
			render :home
		end
	end
	```

 6. Create View.
	Site_controller.rb expects the view file to be located at /app/views/site/.
	Ex: /app/views/site/home.html.erb

Run the application by typing in "rails server" into the terminal.
Then visit http://localhost:3000

Views/layouts/application.html.erb is the page template file.

Generate creates files, destroy removes them.

Naming Conventions:
Action name = Template File name
Partial HTML snippet file names should begin with an underscore.

Asset Tag Helpers are GREAT!...
```
<%= image_tag "kaiser_smile.gif", alt:"german shepherd smiling", title:"What a Cute Puppy!" %>
````

In place of:
```
<img src="assets/images/kaiser_smile.gif" alt="german shepherd smiling" title="What a Cute Puppy!">
```

...Except for the Auto-Generated Fingerprint Caching URL Bull@#$%.

# Params
### Through a Route
Parameters are hashes used to date from the client's browser to the application server. Params through a route example:
```ruby
get '/user/:name' do
	name = params[:name]
	"Hello, #{name}!"
end
```

### Through a Form
```ruby
<form action="/user" method="POST">
	<input type="text" name="name">
</form>
post '/user' do
	name = params[:name]
	"Hello, #{name}!"
end
```
### Through a String Query
```ruby
# http://localhost
get '/user/:name' do
	name = params[:name]
	"Hello, #{name}!"
end
```
#Faith of the 7 CRUD Actions
CRUD stands for:
- Create
- Read
- Update
- Destroy

| Name    | Action               | Notes               |
| ------- |----------------------| --------------------|
| Index   | Displays list        | (All)               |
| New     | Shows Form           | (Related to Create) |
| Create  | Processes Form       | (Related to New)    |		
| Show 	  | Dsplays Details of 1 | (Individual)        |
| Edit 	  | Shows form           | (Related to Update) |
| Update  | Processes form       | (Related to Edit)   |
| Destroy | Deletes              | (Default 1 Row)     |

**Show**, **Edit**, and **Delete** require the **ID** to function.

## URL Parameters
Type the following into the terminal to view all helper paths:
```
$ rails routes
```

Helper Paths can be created automatically using Rails naming conventions by replacing the individual routes for each Controller (Object Class) in the config/routes.rb file like so:

```Ruby
resources :object_class do
    resources :nested_class													# <= Nested resources/routes
end
resources :object_class, only: [:index, :show, :new, :create] do			# <= Only: limits to exactly what you need
	resources :nested_class, except: [:show]  # <= Nested resources/routes	# <= Except: excludes what you don't
end
```