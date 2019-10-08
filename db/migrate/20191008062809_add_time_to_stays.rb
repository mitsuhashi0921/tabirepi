class AddTimeToStays < ActiveRecord::Migration[5.2]
  def change
    add_column :stays, :time, :time
  end
end
