class CreateStays < ActiveRecord::Migration[5.2]
  def change
    create_table :stays do |t|
      t.string :time
      t.string :status
      t.string :country
      t.string :prefecture
      t.string :city
      t.string :latitude
      t.string :longitude
      t.string :place
      t.text :picture
      t.integer :money
      t.text :comment
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
