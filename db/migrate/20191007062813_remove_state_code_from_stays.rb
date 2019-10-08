class RemoveStateCodeFromStays < ActiveRecord::Migration[5.2]
  def change
    remove_column :stays, :state_code, :string
  end
end
