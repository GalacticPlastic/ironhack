Authentication & Authorization
=================

Distinctions between anon and existing users.

1. User Registration (Sign Up)
2. User Authentication (Login and Logout)

- Usernames and Passwords.
- Users log in and out.
	- _Ex: Node.js npm passport (Facebook/multi social media login capabilities.)_
- Sessions.

###Two User Roles:

- Authenticated Users
	Can see their own profile.
- Admin
	Can see complete list of users.

Password encryption uses exact same encryption for exact same password. (AKA: _"Digital Footprint"_)
(/config/secrets/yml)

**NEVER, EVER, Hard-Code _Any_ Password Credentials into Your App!!**

> development:
	secret_key_base: c82d9fa2f6f5e97cf0b7fcf05af02c1e2c0b53ecb7331f72bc9795adc25745b5f1f5c8e60144801f00dab3f96803a9b05afdbe10d3638a583811d3f49dcb567d
	
test:
	secret_key_base: bc178b30e5731b66a1c47c8a2a18b4ac7bbe577fad2e6001ff2e73fbcb60835215b08811ad32ed9ac5a1c8b606e053d2f753f30ffbcad716c05b99bf142244bf

Do not keep production secrets in the repository, instead read values from the environment.
production:
> secret_key_base: <%= ENV["SECRET_KEY_BASE"] %>

Rails Command to Reset Secret Key:
```
	rake secret
	rails secret
```

#### Enable th BCrypt Gem
Uncomment out ```gem 'bcrypt', '~> 3.1.7'``` in the Gemfile.
(Uses ActiveModel has_secure_password.)

Don't forget to stop rails server and ```bundle install```!

In **app/models/user.rb**, add the **has_secure_password** to the model:

```Ruby
	class User < ActiveRecord::Base
		has_secure_password
		validates :username, presence: true
		validates :email, presence: true, uniqueness: true
	end
	```

	Must Use this _Exact_ Naming Convention to Trigger Shortcut Migration Code:
	```rails generate migration AddPasswordDigestToUsers password_digest:string```

	Confirm by looking at the new migration file in **/db/migrate** :

	```Ruby
	class AddPasswordDigestToUsers < ActiveRecord::Migration
	  def change
	    add_column :users, :password_digest, :string
	  end
	end
```

### Update the Sign-Up Form
**/app/views/users/new.html.erb** :

```ruby
	<%= form_for :user, url: '/users' do |f| %>
		<fieldset>
			<%= f.label :username, "Name" %>
			<%= f.text_field :username %>
		</fieldset>
		<fieldset>
			<%= f.label :email %>
			<%= f.text_field :email %>
		</fieldset>
		<fieldset>
			<%= f.label :password %>
			<%= f.password_field :password %>
		</fieldset>
		<fieldset>
			<%= f.label :password_confirmation, "Confirm Password" %>
			<%= f.password_field :password_confirmation %>
		</fieldset>
		<%= f.button %>
	<% end %>
```

####Terminal Fun!
```
	rails console
	User.last

	User Load (0.1ms)  SELECT  "users".* FROM "users"  ORDER BY "users"."id" DESC LIMIT 1
	=> #<User:0x007ff3397057e0
	id: 6,
	username: "Galactic Plastic",
	email: "suckit@mailinator.com",
	created_at: Tue, 22 Nov 2016 16:24:40 UTC +00:00,
	updated_at: Tue, 22 Nov 2016 16:24:40 UTC +00:00,
	password_digest: "$2a$10$v2JDoppMVgG2XvA5fnuFauRUb1hnupc.EkZYUMOVdo1QjN/uvPT5u">

	new_user = User.last
	new_user.authenticate("password")
	^[[B=> false

	new_user.password = "swordfish"
	new_user.password_confirmation = "swordfish"
	new_user.save
```

Sessions
=================

In Rails, sessions store data bits in a cookie until the cookie expires or is cleared. (Can also be stored in cache or database.)

```session[:key] = value```

### Accessing the Session Data
```@current_user = User.find_by(id: session[:user_id])```


### Add the Routes:
**/config/routes.rb** :
```ruby
	Rails.application.routes.draw do
	  get '/login' => 'sessions#new'      # => Displays Login Form
	  post '/login' => 'sessions#create'   # => Login
	  delete '/logout' => 'sessions#destroy' # => Logout
	  # => (Rocket syntax) same as , to:
	end
```

### Create the Sessions Controller:
Sessions, like Params, is Rails magic that is created automatically.
```$ rails g controller sessions```

In **/app/controllers/sessions_ontroller.rb**, add methods for **new**, **create**, and **destroy**.
```ruby
	class SessionsController < ApplicationController
		def new
			render :new
		end
		if user_confirm && user_confirm.authenticate(params[:password])
			session[:user_id] = user_confirm.id
			redirect_to "/"
		else
			redirect_to "/login"
		end

		# Alternate Create If..Else that Does the Same Thing:
		# if user_confirm == nil || user_confirm.authenticate(params[:password]) == false
		# 	redirect_to "/login"
		# else
		# 	session[:user_id] = user_confirm.id
		# 	redirect_to "/"
		# end

		# Both Create If..Else Options Above are the Refactored Version of:
		# if user_confirm == nil
		# 	redirect_to "/login"
		# elsif
		# 	user_confirm.authenticate(params[:password]) == false
		# 	redirect_to "/login"
		# else
		# 	session[:user_id] = user_confirm.id
		# 	redirect_to "/"
		# end
	end
```

In **/app/views/sessions/new.html.erb** :
```
<h1>Login</h1>
<%= form_tag "/login" do %>
	<fieldset>
		<%= label_tag :email %>
		<%= email_field_tag :email %>
	</fieldset>
	<fieldset>
		<%= label_tag :password %>
		<%= password_field_tag :password %>
	</fieldset>
	<%= button_tag "Login" %>
<% end %>
```

Authorization
=================
- Add an **authorize_user** to application controller.
- Add a **before_action** filter to users controller.


## The Flash Hash for User Feedback
```flash[:message]```

In **/app/controllers/users_controllers.rb** :

```ruby
class UsersController < ApplicationController
	def show
		if session[:user_id]
			get_current_user
			render :show
		else
			flash[:must_login_message] = "You need to login to view your profile page."
			redirect_to "/login"
		end
	end
end
```

In **/app/views/sessions/new.html.erb** :
```
<h1>Login</h1>
<%= flash[:must_login_message] %>
```

## Creating the First Admin
Add a Column to DB Table:
```rails g migration add_roles_to_users role:string```

Not sure how to add a default in the terminal.. Open migration file in **/db/migrate/** and edit like so (name does not matter):
```class AddRolesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :role, :string, default: "user"
  end
end```

Then ```rails db:migrate```.

```
$ rails console
$ User.create(username: "New Admin", email: "sample@email.com", password: "password", password_confirmation: "password", role: "admin")
$ new_admin = User.find_by(email: "suckit@mailinator.com")
$ new_admin.update(role: "admin", password: "password", password_confirmation: "password")
Methods in Rails Controllers are called _Actions_.