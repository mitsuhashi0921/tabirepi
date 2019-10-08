class RemoveStayIdFromDays < ActiveRecord::Migration[5.2]
  def change
    remove_column :days, :stay_id, :integer
  end
end
