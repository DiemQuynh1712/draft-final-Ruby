class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.string :name
      t.integer :star
      t.string :review

      t.timestamps
    end
  end
end
