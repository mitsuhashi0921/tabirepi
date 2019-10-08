class RemoveTitleIdFromTrips < ActiveRecord::Migration[5.2]
  def change
    remove_column :trips, :title_id, :string
  end
end
