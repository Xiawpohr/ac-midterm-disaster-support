class Commet < ApplicationRecord
	belongs_to :disaster
	belongs_to :user
end
