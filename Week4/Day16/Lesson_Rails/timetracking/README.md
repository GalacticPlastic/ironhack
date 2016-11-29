Intro to Rails
-----------------
 1. Create a New Rails Application.

  	```$ rails new Folder_Name```

 2. Create a New Database.
	(Skip this step if in development using sqllite.)

   	```$ rails db:create```

  	If you screw up, nuke the DB and start over:
  	```$ rails db:drop db:create db:migrate```

  	If you have seeds:
  	``$ rails db:seed```

 3. ActiveRecord Shortcut for Steps 4-7:
	 ```$ rails g resource ModelName attribute_name:string attribute_number:integer```
	
	- Generates the **Model**.
	- Creates the **Migration** to Create the Table in the Database.
	- Generates the **Controller**.
	- Adds **resources :model_name** to *routes.rb*.

 4. Add Route.
 	
 	**/config/routes.rb**:
	
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

	All pages added here. For details on the DSL available within this file, see *guides.rubyonrails.org/routing.html*.

	### URL Parameters
	Type the following into the terminal to view all helper paths:
	
	```$ rails routes```

	Helper Paths can be created automatically using Rails naming conventions by replacing the individual routes for each Controller (Object Class) in the **/config/routes.rb** file like so:

	```Ruby
	resources :object_class do
	    resources :nested_class													# <= Nested resources/routes
	end
	resources :object_class, only: [:index, :show, :new, :create] do			# <= Only: limits to exactly what you need
		resources :nested_class, except: [:show]  # <= Nested resources/routes	# <= Except: excludes what you don't
	end
	```

 5. Create Controller.

	The controller is a class. Deciding which pages belong to which controller is done thematically (highly subjective).

	**IMPORTANT!** Controller naming convention is **PLURAL**!
	**IMPORTANT!** Model naming convention is **SINGULAR**!

	```$ rails generate controller site```

	Created two Ruby classes in **/app/controllers/** :
	- application_controller.rb
	- site_controller.rb

	Rails generate command helps create the different pieces of the app.
	- **site** is a controller.
	- **home** is the action.
	- **get** is the HTTP verb.
	- **/** is the URI.

6. Add Action / Method.

	In the terminal, add generate the model the way you generated the controller. You can add the attributes in as well:

	```$ rails g model Artist name:string venue:string city:string date:datetime price:integer description:text```

	*Em:* Don't add **id:integer**, as it is automatically created.

	Now, to generate the schema and get this show on the road, you must update the database with all this new crap.
	Type the following in the terminal:

	```$ rails db:migrate```

	If you get an error because something was invalid in the model you generated (like if you added *id:integer* like I did), go to **/db/migrate/** and open the *#######_create_modelname.rb* in there.

	Example:

	```
	class CreateArtists < ActiveRecord::Migration[5.0]
	  def change
	    create_table :artists do |t|
	      t.string :name
	      t.string :venue
	      t.string :city
	      t.datetime :date
	      t.integer :price
	      t.text :description
	      t.timestamps
	    end
	  end
	end
	```

	To add new or missing colums to an existing table, you must run a _new_ migration, by typing the following into the terminal:

	```$ rails g migration migration_revision_name addition_name:string addition_two:string```
	```$ rails db:migrate```

	Remove whatever crap you put in there that is preventing you from completing the migrate, save the file, and then type **rails db:migrate** in the terminal again. Voila!

	Add the following to the SiteController class inside **/app/controllers/site_controller.rb** :
	```Ruby
	class SiteController < ApplicationController
		def home
			render 'home' # Render :name is always the same name as the view template
			# Can also use this syntax:
			render :home
		end
	end
	```

 7. Create View.

	**Site_controller.rb** expects the view file to be located at **/app/views/site/**. Ex: **/app/views/site/home.html.erb**.

	- Run the application by typing in "rails server" into the terminal.
	- Then visit **http://localhost:3000**.
	- **/Views/layouts/application.html.erb** is the page template file.
	- Generate creates files, destroy removes them.

	*Naming Conventions:*
	- Action name = Template File name
	- Partial HTML snippet file names should begin with an underscore.

	Asset Tag Helpers are GREAT!...
	```<%= image_tag "kaiser_smile.gif", alt:"german shepherd smiling", title:"What a Cute Puppy!" %>```

	In place of:
	```<img src="assets/images/kaiser_smile.gif" alt="german shepherd smiling" title="What a Cute Puppy!">```

	...Except for the Auto-Generated Fingerprint Caching URL Bull@#$%.

[Params](#rails-params)
====================================================================
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

[Faith of the 7 CRUD Actions](#crud-actions)
====================================================================
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

[Many To Many Associations](#many-to-many)
====================================================================

Many-to-Many associations need an additional model to work. In the industry it's known as a _join table_ (aka, the _middle man_). In the `Post` and `Tag` example, it is named `PostTag`.

Commands used to generate the models:
	```$ rails generate model Post    title:string    text:text       user:belongs_to```
	```$ rails generate model Tag     name:string```
	```$ rails generate model PostTag post:belongs_to tag:belongs_to```

See the final schema in the [`db/schema.rb`](https://github.com/ironhack-miami-oct-2016/course-examples/blob/master/week6/day1/many_to_many_blog/db/schema.rb).

See the 3 models for the specific wiring:
- [`Post` model](https://github.com/ironhack-miami-oct-2016/course-examples/blob/master/week6/day1/many_to_many_blog/app/models/post.rb#L4-L5)
- [`Tag` model](https://github.com/ironhack-miami-oct-2016/course-examples/blob/master/week6/day1/many_to_many_blog/app/models/tag.rb#L2-L3)
- [`PostTag` model](https://github.com/ironhack-miami-oct-2016/course-examples/blob/master/week6/day1/many_to_many_blog/app/models/post_tag.rb#L2-L3)

Once the wiring is complete, see examples of using the association:
[in the `seeds.rb` file](https://github.com/ironhack-miami-oct-2016/course-examples/blob/master/week6/day1/many_to_many_blog/db/seeds.rb#L33-L42).

Even though there are 3 approaches to make a Many-to-Many connection, they all have the same result:

1. [Creating a row in the join table with the IDs](https://github.com/ironhack-miami-oct-2016/course-examples/blob/master/week6/day1/many_to_many_blog/db/seeds.rb#L33-L34)
2. [Creating a row in the join table with the `belongs_to`](https://github.com/ironhack-miami-oct-2016/course-examples/blob/master/week6/day1/many_to_many_blog/db/seeds.rb#L37-L38)
3. [Push to the `has_many` association](https://github.com/ironhack-miami-oct-2016/course-examples/blob/master/week6/day1/many_to_many_blog/db/seeds.rb#L41-L42)

Read more about many to many associations in Rails in the
[Rails Guide](http://guides.rubyonrails.org/association_basics.html#the-has-many-through-association).

### Rails App/Models Naming Convention:
```Ruby
class Sandwich < ApplicationRecord
	# SnakeCase and Pluralize class name:
	# SandwichIngredient
	# Sandwich Ingredient
	# Sandwich_Ingredient
	# sandwich_ingredient
	# sandwich_ingredients
	has_many :sandwich_ingredients
	has_many :ingredients, through: "sandwich_ingredients"	
end
```

[Using JS in Rails](#using-js-in-rails)
====================================================================

There are few gotchas when using JavaScript in a Rails application.

### Step 1: Remove CoffeeScript ###

By default, Rails uses [CoffeeScript](http://coffeescript.org)
instead of JavaScript. If you want to use JavaScript, you have to disable CoffeScript.

1. Remove (or comment out) the `coffee-rails` gem
   in your [`Gemfile`](https://github.com/ironhack-miami-oct-2016/course-examples/blob/master/week5/day4/js_in_rails/Gemfile#L15-L16).
2. Run `bundle install` in your terminal to update your gems.
3. Delete all `.coffee` files in
   [`app/assets/javascripts/`](https://github.com/ironhack-miami-oct-2016/course-examples/blob/master/week5/day4/js_in_rails/app/assets/javascripts/).
4. Run `rails tmp:clear` in your terminal to refresh your app's temporary files.

### Step 2: Use the `Sprockets-ES6` Gem ###

If you are using
[JavaScript class syntax](https://ponyfoo.com/articles/es6-classes-in-depth) or
[template strings](https://ponyfoo.com/articles/es6-template-strings-in-depth),
you will get an error when you try to deploy your app to Heroku. To avoid that error, use the `sprockets-es6` gem.


1. Add the `sprockets-es6` gem to your [`Gemfile`](Gemfile#L3)
   with the [special `require` option](Gemfile#L3).
   ```gem "sprockets-es6", require: "sprockets/es6"```

2. Change the extension of any JavaScript files
   that use classes or template strings from `.js` to `.es6`.

3. You **should never**
   change the extensions of Rails' special JavaScript files:
   [`application.js`](https://github.com/ironhack-miami-oct-2016/course-examples/blob/master/week5/day4/js_in_rails/app/assets/javascripts/application.js) and
   [`cable.js`](https://github.com/ironhack-miami-oct-2016/course-examples/blob/master/week5/day4/js_in_rails/app/assets/javascripts/cable.js).

### Step 3: Don't Use the Document's `Ready` Event ###

Rails comes with a gem named
[Turbolinks](http://guides.rubyonrails.org/working_with_javascript_in_rails.html#turbolinks)
that does some funky stuff with JavaScript to make your pages load faster. Because of that, you can't depend on the `$(document).ready()` callback. Turbolinks provides a special event (`turbolinks:load`)
that you should use instead:

```
	$(document).on("turbolinks:load", function () {
	  console.log("the page has loaded from pizza.js");
	});
```