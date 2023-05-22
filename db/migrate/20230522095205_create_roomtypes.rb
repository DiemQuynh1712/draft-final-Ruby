class CreateRoomtypes < ActiveRecord::Migration[7.0]
  def change
    create_table :roomtypes do |t|
      t.string :name
      t.string :description
      t.integer :roomsize_m2
      t.float :price_per_night

      t.timestamps
    end
  end
end
