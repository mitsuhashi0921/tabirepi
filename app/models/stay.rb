class Stay < ApplicationRecord
	belongs_to :day
	has_many :images, dependent: :destroy, inverse_of: :stay
	accepts_nested_attributes_for :images, allow_destroy: true
	accepts_attachments_for :images

    before_save :update_lonlat

    def update_lonlat
        lonlat = place_to_lonlat(read_attribute(:place))
        write_attribute(:lonlat, lonlat)
    end

    # 住所を保存用経緯度に変換
    def place_to_lonlat(place)
      result = Geocoder.search(place)
      if result.first
        lonlat = result.first.coordinates
        return lonlat.join(',')
      else
        return false
      end
    end

end
