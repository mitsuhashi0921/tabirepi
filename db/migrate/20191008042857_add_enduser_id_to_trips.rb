class AddEnduserIdToTrips < ActiveRecord::Migration[5.2]
  def change
    add_column :trips, :enduser_id, :integer
  end
end
