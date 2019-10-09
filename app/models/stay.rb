class Stay < ApplicationRecord
	belongs_to :day
	has_many :images, dependent: :destroy
	accepts_nested_attributes_for :images, allow_destroy: true
	accepts_attachments_for :images
end
