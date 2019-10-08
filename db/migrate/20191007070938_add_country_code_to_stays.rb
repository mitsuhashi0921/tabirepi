class AddCountryCodeToStays < ActiveRecord::Migration[5.2]
  def change
    add_column :stays, :country_code, :string
  end
end
