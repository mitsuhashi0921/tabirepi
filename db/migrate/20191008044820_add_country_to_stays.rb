class AddCountryToStays < ActiveRecord::Migration[5.2]
  def change
    add_column :stays, :country, :string
  end
end
