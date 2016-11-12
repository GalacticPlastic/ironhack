Step-by-Step Application Walkthrough
-----------------
# Getting Started.
1. Create the Folder Structure and Database.

	```Ruby
	rails new Project_ConcertNetwork
	cd Project_ConcertNetwork
	rails db:create
	```

2. Create the Controller and Models.

	Reasoning behind separation of models (and deviation from project instructions):

	> A concert tour is a series of concerts by an artist or group of artists in different cities or locations. Often concert tours are named, to differentiate different tours by the same artist and associate a specific tour with a particular album or product (for example: Iron Maiden World Slavery Tour). *(Wikipedia definition)*

	```Ruby
	rails generate controller tour
	rails generate controller concert
	rails g model tour name:string artist:string description:text price:integer
	rails g model concert name:string date:datetime venue:string city:string state:string
	```

3. Create the Resource Routes and Migrate the DB.

	Add to **config/routes.rb** :

	```Ruby
	Rails.application.routes.draw do
		root to: 'tour#index'
		resources :tour, only: [:index, :show, :new, :create] do
			resources :concert, only: [:index, :show, :new, :create]
		end
	end
	rails db:migrate
	```

4. Establish the Nested Relationship Between Models.

	*Relationship:* **One-to-Many**.
	Add the following to the Parent class, which is at **/app/models/tour.rb** :

	```Ruby
	class Tour < ApplicationRecord
		has_many :concerts
	end
	```
	
	*Relationship:* **Many-to-One**.
	Add the following to the Child class, which is at **/app/models/concert.rb** :
	```Ruby
	class Concert < ApplicationRecord
		belongs_to :tour
	end
	```

5. Create Validations

	Validations are created for each item defined in the schema for both models:

	```Ruby
	ActiveRecord::Schema.define(version: 20161111163554) do
	  create_table "concerts", force: :cascade do |t|
	    t.string   "name"
	    t.datetime "date"
	    t.string   "venue"
	    t.string   "city"
	    t.string   "state"
	    t.datetime "created_at", null: false
	    t.datetime "updated_at", null: false
	  end
	  create_table "tours", force: :cascade do |t|
	    t.string   "name"
	    t.string   "artist"
	    t.text     "description"
	    t.integer  "price"
	    t.datetime "created_at",  null: false
	    t.datetime "updated_at",  null: false
	  end
	end
	```
	
	Added to **/app/models/tour.rb** :
	
	```Ruby
	class Tour < ApplicationRecord
		has_many :concerts
		validates :name, presence: true, uniqueness: true
		validates :artist, presence: true
		validates :description, presence: true, uniqueness: true
		validates :price, presence: true, numericality: true
	end
	```
	
	Added to **/app/models/concert.rb** :
	
	```Ruby
	class Concert < ApplicationRecord
		belongs_to :tour
		validates :date, presence: true, uniqueness: true
		validates :venue, presence: true, uniqueness: true
		validates :city, presence: true, uniqueness: true
		validates :state, presence: true
	end
	```

# Add the Layout Framework.
The template file for the entire site is **app/views/layouts/application.html.erb** .

1. Establish the Structure.

	```Ruby
	<!DOCTYPE html>
	<html>
		<head>
			<meta charset="utf-8">
			<title>Ironhack Week 4 Project: Concert Network</title>
	    	<%= csrf_meta_tags %>
	    	<%= stylesheet_link_tag    'application', media: 'all', 'data-turbolinks-track': 'reload' %>
	    	<%= javascript_include_tag 'application', 'data-turbolinks-track': 'reload' %>
		</head>
		<body>
			<header>
				<h1><a href="/">Site Title</a>
				<%= render "navigation" %>
			</header>
			<main>
				<%= yield %>
			</main>
			<footer>
				<%= render "navigation" %>
			</footer>
		</body>
	</html>
	```

2. Create the Partial Snippets.

	The navigation file is saved as **app/views/layouts/_navigation.html.erb** and is applied in the layout with **<%= render "navigation" %>** .
	Placeholder nav content for now:

	```Ruby
	<nav>
		<ul>
			<li><%= link_to_unless_current "Home", "/" %></li>
			<!-- <li>< %= link_to_unless_current "", _path %></li> -->
		</ul>
	</nav>
	```

3. Implement Bootstrap.

	**NOTE:** You must add the link to the external Bootstrap stylesheet *above* the Rails stylesheets or you will not be able to overwrite any Bootstrap styling you don't want/need, since CSS is applied sequentially from top to bottom.

	```Ruby
	<!DOCTYPE html>
	<html>
		<head>
	    	<meta charset="utf-8">
	        <title>Rails App Exercise: Address Book</title>
	    	<%= csrf_meta_tags %>
	        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
	    	<%= stylesheet_link_tag 'application', media: 'all', 'data-turbolinks-track': 'reload' %>
	    	<%= javascript_include_tag 'application', 'data-turbolinks-track': 'reload' %>
		</head>
	```

	Now add the appropriate Bootstrap classes to establish your desired layout:

	```Ruby
	<!DOCTYPE html>
	<html>
		<head>
			<meta charset="utf-8">
			<title>Ironhack Week 4 Project: Concert Network</title>
	    	<%= csrf_meta_tags %>
	    	<%= stylesheet_link_tag    'application', media: 'all', 'data-turbolinks-track': 'reload' %>
	    	<%= javascript_include_tag 'application', 'data-turbolinks-track': 'reload' %>
		</head>
		<body>
			<header class="row">
				<h1><a href="/">Site Title</a>
				<%= render "navigation" %>
			</header>
			<main class="row">
				<%= yield %>
			</main>
			<footer class="row">
				<%= render "navigation" %>
			</footer>
		</body>
	</html>
	```

	Normally the ```<article>``` and ```<aside>``` tags should be placed in the global layout, but the instructions specifically stated that only the index would have a particular content in the ```<aside>```, so Bootstrap layout classes must be added to the index page as well, which is **app/views/tour/concert.html.erb** . (Index page was set to *concert/index.html.erb* by the following line in */config/routes.rb* : **root to: 'tour#concert'**)

	```Ruby
	<article class="col-sm-7 col-sm-offset-1">
		<h2>Concerts Happening Today!</h2>
		<!--<ul>
				<li>
					< %= Add a Loop %>
				</li>
		</ul>-->
	</article>
	<aside class="col-sm-3">
		<h2>Concerts Coming this Month:</h2>
		<!--<ul>
				<li>
					< %= Add a Loop %>
				</li>
		</ul>-->
	</aside>
	```

	*Note:* Because the containers inside the ```<main>``` container float, it's good practice to clear all floats to avoid cross-compatibility issues.

	Add to **/app/assets/stylesheets/tour.scss** :

	```CSS
	main:after { clear: both; }
	```

	This forces the element to self-clear its children (CSS3).

4. Define Your CSS Resets and Globals

	This is all personal preference. The global file is saved as **app/assets/stylesheets/application.css**

	```CSS
	/* ----- Globals ----- */
	* { margin: 0; padding: 0; }
	body, html { width: 100%; }
	body {
		background: #333;
		color: #555;
		font-family: Helvetica, Arial, sans-serif;
		font-size: 0.9em;
	}
	a { 
		display: inline-block;
		text-decoration: none;
	}
	p { padding: 10px 0; }
	```

# Define the Class Methods.
For this project, only the following CRUD actions will be used for the Tour and Concert classes:

| Name    | Action                      | Notes               |
| ------- |-----------------------------| --------------------|
| Index   | Displays List               | (All Items)         |
| New     | Shows Form                  | (Related to Create) |
| Create  | Processes Form              | (Related to New)    |		
| Show 	  | Dsplays Details of One Item | (Individual)        |

## Add to **/app/controllers/concerts_controller.rb**.
Before nesting the Concerts controller into the Tours controller, functionality must be tested.

1. Concert Method for the **Index** page:

	'Concerts Today' and 'Concerts this Month':
	```Ruby
	class ConcertsController < ApplicationController
		def index
			@concerts_today = Concert.where(date: DateTime.now.to_date..Date.tomorrow)
			@concerts_this_month = Concerts.where(date: DateTime.now.to_date...Date.today.end_of_month)
			render :index
		end
	end
	```

2. Concert Method to **Show** Each Individual Concert Page:

	```Ruby
	def show
		@concert = Concert.find(params[:id])
		render :show
	end
	```

3. Concert Method for a **New** Concert:

	```Ruby
	def new
		@concert = Concert.new
		render :new
	end
	```

4. Concert Method for the **Create** Form:

	```Ruby
	def create
		@concert = Concert.new(entry_params)
		@concert.save
		redirect_to tour_path(@concert)
	end
	```

	Entry params is a DRY method for adding sanitized form inputs. To work, this code must be added inside the ```class ConcertsController < ApplicationController``` before the closing ```end``` tag:

	```Ruby
	private
	def entry_params
		params.require(:concert).permit(:date, :venue, :city, :state)
	end
	```

	Update **concert/index.html.erb** Index:
	```Ruby
		<article class="col-sm-7 col-sm-offset-1">
			<h2>Concerts Happening Today!</h2>
			<ul>
				<% @concerts_today.each do |concert| %>
					<li>
						<%= link_to concert.name, concert_path(concert.id) %>
						<br><%= concert.city %>, <%= concert.state %>
						<br><%= concert.price %>
					</li>
				<% end %>
			</ul>
		</article>
		<aside class="col-sm-3">
			<h2>Concerts Coming this Month:</h2>
			<ul>
				<% @concerts_this_month.each do |concert| %>
					<li>
						<%= link_to concert.name, concert_path(concert.id) %>
						<br><%= concert.city %>, <%= concert.state %>
						<br><%= concert.price %>
					</li>
				<% end %>
			</ul>
		</aside>
	```