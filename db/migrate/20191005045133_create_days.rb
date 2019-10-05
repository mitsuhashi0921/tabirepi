class CreateDays < ActiveRecord::Migration[5.2]
  def change
    create_table :days do |t|
      t.integer :stay_id
      t.integer :day
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
