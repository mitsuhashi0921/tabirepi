class AddStateCodeToStays < ActiveRecord::Migration[5.2]
  def change
    add_column :stays, :state_code, :string
  end
end
