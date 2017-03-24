class Disaster < ApplicationRecord
	belongs_to :category
	has_many :commets
end
