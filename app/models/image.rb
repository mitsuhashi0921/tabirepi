class Image < ApplicationRecord
	belongs_to :stay
	attachment :image
end
