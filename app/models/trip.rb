class Trip < ApplicationRecord
	has_many :days, dependent: :destroy, inverse_of: :trip
	accepts_nested_attributes_for :days, allow_destroy: true
end
