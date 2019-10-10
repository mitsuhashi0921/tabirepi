class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.integer :enduser_id
      t.integer :trip_id

      t.timestamps
    end
  end
end
