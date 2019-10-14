class AddLonlatToStays < ActiveRecord::Migration[5.2]
  def change
    add_column :stays, :lonlat, :string
  end
end
