class Trip < ApplicationRecord
	belongs_to :enduser
	has_many :days, dependent: :destroy, inverse_of: :trip
	accepts_nested_attributes_for :days, allow_destroy: true

	has_many :likes, dependent: :destroy

	def liked_by?(enduser)
		likes.where(enduser_id: enduser.id).exists?
    end
end
