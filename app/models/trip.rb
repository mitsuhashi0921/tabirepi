class Trip < ApplicationRecord
	belongs_to :enduser
	has_many :days, dependent: :destroy, inverse_of: :trip
	accepts_nested_attributes_for :days, allow_destroy: true
    validates :title, presence: true
	has_many :likes, dependent: :destroy
	def enduser
      return Enduser.find_by(id: self.enduser_id)
    end

	def liked_by?(enduser)
		likes.where(enduser_id: enduser.id).exists?
    end
end
