class Concert < ApplicationRecord
	belongs_to :tour
	validates :date, presence: true, uniqueness: true
	validates :venue, presence: true, uniqueness: true
	validates :city, presence: true, uniqueness: true
	validates :state, presence: true
end