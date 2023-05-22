class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.string :name
      t.date :date_of_birth
      t.string :phone_number
      t.string :gmail
      t.date :check_in_date
      t.integer :number_of_nights
      t.integer :num_adults
      t.integer :num_children
      t.references :roomtype, null: false, foreign_key: true
      t.string :service

      t.timestamps
    end
  end
end
