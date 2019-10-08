class Stay < ApplicationRecord
	attachment :picture
	belongs_to :day
end
