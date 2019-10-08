class Day < ApplicationRecord
	belongs_to :trip
	has_many :stays, dependent: :destroy, inverse_of: :day
    accepts_nested_attributes_for :stays, allow_destroy: true
end
