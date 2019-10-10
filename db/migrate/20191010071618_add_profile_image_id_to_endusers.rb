class AddProfileImageIdToEndusers < ActiveRecord::Migration[5.2]
  def change
    add_column :endusers, :profile_image_id, :string
  end
end
