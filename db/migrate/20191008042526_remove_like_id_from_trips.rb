class RemoveLikeIdFromTrips < ActiveRecord::Migration[5.2]
  def change
    remove_column :trips, :like_id, :integer
  end
end
