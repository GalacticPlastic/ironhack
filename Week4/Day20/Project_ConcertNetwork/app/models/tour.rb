class Tour < ApplicationRecord
	has_many :concerts
	validates :name, presence: true, uniqueness: true
	validates :artist, presence: true
	validates :description, presence: true, uniqueness: true
	validates :price, presence: true, format: { with: /\A\d+(?:\.\d{0,2})?\z/ }, :numericality: { :greater_than_or_equal_to: 0.01 }
end