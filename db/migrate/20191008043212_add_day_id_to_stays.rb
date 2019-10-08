class AddDayIdToStays < ActiveRecord::Migration[5.2]
  def change
    add_column :stays, :day_id, :integer
  end
end
