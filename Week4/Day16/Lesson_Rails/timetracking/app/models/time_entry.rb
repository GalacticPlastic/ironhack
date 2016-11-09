class TimeEntry < ApplicationRecord
	belongs_to :project
	# This method belong to the Project model?
	# one-to-many
end