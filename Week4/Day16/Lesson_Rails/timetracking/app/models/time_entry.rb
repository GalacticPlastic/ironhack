class TimeEntry < ApplicationRecord
	belongs_to :project
	# This method belong to the Project model?
	# one-to-many

	validates :hours, { numericality: true }
	validates :minutes, { numericality: true }
	# validates :date, { numericality: true }
	validates :comment, { presence: true }
end