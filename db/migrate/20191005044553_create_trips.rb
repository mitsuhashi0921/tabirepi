class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.integer :enduser_id
      t.integer :day_id
      t.integer :like_id
      t.string :title
      t.text :subtitle
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
