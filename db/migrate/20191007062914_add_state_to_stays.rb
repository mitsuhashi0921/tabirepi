class AddStateToStays < ActiveRecord::Migration[5.2]
  def change
    add_column :stays, :state, :string
  end
end
