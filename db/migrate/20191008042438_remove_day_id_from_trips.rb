class RemoveDayIdFromTrips < ActiveRecord::Migration[5.2]
  def change
    remove_column :trips, :day_id, :integer
  end
end
