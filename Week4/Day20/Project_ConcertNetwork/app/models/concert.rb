class Concert < ApplicationRecord
	belongs_to :tour
	validates :name, presence: true
	validates :date, presence: true, uniqueness: true
	validates :venue, presence: true, uniqueness: true
	validates :city, presence: true, uniqueness: true
	validates :state, presence: true
end