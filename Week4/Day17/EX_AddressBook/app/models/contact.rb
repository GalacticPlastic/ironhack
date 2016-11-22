class Contact < ApplicationRecord
	validates :name, presence: true, uniqueness: true
	validates :address, presence: true
	validates :phone, presence: true
	validates :email, presence: true
end