Step-by-Step Application Walkthrough
-----------------
# Getting Started:
1. Create the Folder Structure and Database.
```Ruby
rails new Project_ConcertNetwork
cd Project_ConcertNetwork
rails db:create
```
2. Create the Controller and Models.
Reasoning behind separation of models (and deviation from project instructions):
> A concert tour is a series of concerts by an artist or group of artists in different cities or locations.
> Often concert tours are named, to differentiate different tours by the same artist and associate a specific tour
> with a particular album or product (for example: Iron Maiden World Slavery Tour). *(Wikipedia definition)*
```Ruby
rails generate controller tour
rails g model tour name:string artist:string description:text price:integer
rails g model concert date:datetime venue:string city:string state:string
```
3. Create the Resource Routes and Migrate the DB.
Add to config/routes.rb
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
Add the following to the Parent class, which is at **/app/models/tour.rb** :
```Ruby
class Tour < ApplicationRecord
	has_many :concerts
end
```
Relationship: **One-to-Many**
Add the following to the Child class, which is at **/app/models/concert.rb** :
```Ruby
class Concert < ApplicationRecord
	belongs_to :tour
end
```
Relationship: **Many-to-One**
5. Create Validations
Validations are created for each item defined in the schema for both models:
```Ruby
ActiveRecord::Schema.define(version: 20161111163554) do
  create_table "concerts", force: :cascade do |t|
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
	validates :price, presence: true, format: { with: /\A\d+(?:\.\d{0,2})?\z/ }, :numericality: { :greater_than_or_equal_to: 0.01 }
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