Build Your Own API Tutorial
-----------------
## Defining a REST API
* Base URL
	- Base address where all requests are sent (typically an api-exclusive domain).
	- *EX:* **https://api.twitter.com/1.1/**
	- *Path for API Status:* **/statuses/mentions_timeline.json**
* Communication Format
* Resources
* Supported Operations

###Base URL

* Sandwichr Sandwich API:
	- http://localhost:3000/sandwiches
* Base URL:
	- http://localhost:3000
* Sandwiches API Path:
	- /sandwiches

###Communication Formats

* JSON:
	- ```{"hello": true}```
	- Built-in support in virtually every language (most common).
	- Lightweight, less data to send per requests.
	- Readable for people as well as bots.

* XML:
	- ```<hello>true</hello>```
	- Transforms into HTML-like syntax (XHTML) with ease via XSLT.
	- Stable, long-term enterprise favorite.
	- Easy to deeply nest objects for later retrieval using XPath and XQuery libraries.
	- Con: More data for same amount of info.

* MsgPack:
	- ```"\x81\xA5hello\xC3"```
	- Faster than JSON and XML to transfer.
	- Smaller, lighter then JSON.
	- Too new for reliable, built-in support (least popular as of now).
	- Illegible for people.

#####Examples:
```
	def show
		user = User.find(params[:id])
		render json: user
	end
	{
		"id": 1,
		"name": "Izzy Ironside",
		"email": "izzy@ironhack.com",
	}
```

```xml
	def show
		user = User.find(params[:id])
		render xml: user
	end
	<?xml version="1.0" encoding="UTF-8"?>
	<user>
		<id type="integer">1</id>
		<name>Izzy Ironside</name>
		<email>izzy@ironhack.com</email>
	</user>
```

Generate Rails Resource Routes through the Terminal:

```ruby
	rails g resource Sandwich name:string bread_type:string
	rails g resource Ingredient name:string calories:integer
```

- Generates the **Model**.
- Creates the **Migration** to Create the Table in the Database.
- Generates the **Controller**.
- Adds **resources :sandwiches** to *routes.rb*.

| Verb		| Path			  | Action
|:---------:|:---------------:|:------------------:|
| GET 		| /sandwiches 	  | sandwiches#index   |
| POST 		| /sandwiches 	  | sandwiches#create  |
| GET		| /sandwiches/:id | sandwiches#show    |
| PATCH/PUT | /sandwiches/:id | sandwiches#update  |
| DELETE 	| /sandwiches/:id | sandwiches#destroy |

An API must **always render json** - not redirect, or render a view.

## Models
**Many to Many Associations**

```rails g model SandwichIngredient sandwich:belongs_to ingredient:belongs_to```

### Sandwich
- has_many :sandwich_ingredients
- has_many :ingredients, through: "sandwich_ingredients"

### Sandwich_Ingredients
- belongs_to :ingredient
- belongs_to :sandwich

### Ingredients
- has_many :sandwich_ingredients
- has_many :sandwiches, through: "sandwich_ingredients"

```
	rails console
	to_bootcamp.tags.each { |x| puts x.name }
```