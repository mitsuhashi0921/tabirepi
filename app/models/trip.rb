class Trip < ApplicationRecord
	belongs_to :enduser
	has_many :days, dependent: :destroy, inverse_of: :trip
	accepts_nested_attributes_for :days, allow_destroy: true
    validates :title,    length: { in: 1..50 }        # 「1文字以上50文字以下」
    validates :subtitle,    length: { maximum: 250 }      # 「250文字以下」
    validates :comment,    length: { maximum: 250 }      # 「250文字以下」
	has_many :likes, dependent: :destroy
	def enduser
      return Enduser.find_by(id: self.enduser_id)
    end

	def liked_by?(enduser)
		likes.where(enduser_id: enduser.id).exists?
    end
end
