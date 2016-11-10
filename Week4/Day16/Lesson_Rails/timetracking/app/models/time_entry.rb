class TimeEntry < ApplicationRecord
	belongs_to :project
	validates :date, presence: true
	validates :hours, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
	validates :minutes, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
	validates :comment, presence: true
end