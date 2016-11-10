class Project < ApplicationRecord
	has_many :time_entries
	validates :name, presence: true, uniqueness: true
	validates :descript, presence: true
end