class Disaster < ApplicationRecord
	belongs_to :category
	belongs_to :user
	has_many :commets
end
