class RemoveStateFromStays < ActiveRecord::Migration[5.2]
  def change
    remove_column :stays, :state, :string
  end
end
