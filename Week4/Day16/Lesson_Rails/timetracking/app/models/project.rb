class Project < ApplicationRecord
	has_many :time_entries
	# This model, Project, has a list of time entries associated with it
	# many-to-one
end