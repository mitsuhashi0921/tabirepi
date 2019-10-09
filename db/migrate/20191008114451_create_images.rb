class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.text :name
      t.text :image_id
      t.integer :stay_id

      t.timestamps
    end
  end
end
