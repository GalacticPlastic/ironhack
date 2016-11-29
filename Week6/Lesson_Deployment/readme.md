Application Deployment
----------------------

[`Heroku`](http://heroku.com) is a cloud platform that enable the live deployment of code that is accessible everywhere. (Third-party handling of deployment bugs through a remote Git push.)

_Note:_ Heroke requires you to use a Postgresql database. (The Rails default is SQLite.)

```$ rails new hello-world --database=postgresql```
```$ git init```
```$ brew info postgres```
```$ pg_ctl -D /usr/local/var/postgres start```
```$ rails db:drop db:create db:migrate```

Run the Postgres in one Terminal tab, the Rails server in another.

Next, generate a controller and create a root route.


add ```gem "rails_12factor", group: :production``` to Gemfile.
Then ```$ bundle install```.

Git commit, then:
```$ heroku create app-name```
```$ heroku apps```
```$ git remote -v```
```$ git push heroku master```
```$ heroku run rails db:migrate db:seed```

To destroy: ```$ heroku apps:destroy app-name```
To rename: ```$ heroku apps:rename app-name```

To display images in production, edit **/config/environments/production.rb** on line 26:
```config.assets.compile = true```

Convert database in Gemfile:
```
# gem 'sqlite3'
gem 'pg'
```

In **/config/database.yml** :
```
	default: &default
	  adapter: postgresql
	  pool: 5
	  timeout: 5000

	development:
	  <<: *default
	  database: sandwichr_development

	# Warning: The database defined as "test" will be erased and
	# re-generated from your development database when you run "rake".
	# Do not set this db to the same as development or production.
	test:
	  <<: *default
	  database: sandwichr_test

	production:
	  <<: *default
	  database: sandwichr_production
	  password: <%= ENV[SANDWICHR_DATABASE_PRODUCTION] %> 
```

Then in terminal:
```$ rails db:drop db:create db:migrate db:seed```