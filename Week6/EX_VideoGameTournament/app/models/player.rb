class Player < ActiveRecord::Base
	has_many :registrations
    has_many :tournaments, through: "registrations" 
end