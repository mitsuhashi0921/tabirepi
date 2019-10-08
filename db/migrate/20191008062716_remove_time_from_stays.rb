class RemoveTimeFromStays < ActiveRecord::Migration[5.2]
  def change
    remove_column :stays, :time, :string
  end
end
