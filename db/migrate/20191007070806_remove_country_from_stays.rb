class RemoveCountryFromStays < ActiveRecord::Migration[5.2]
  def change
    remove_column :stays, :country, :string
  end
end
