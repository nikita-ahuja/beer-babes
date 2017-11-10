class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.string :comments
      t.string :notes
      t.date :date
      t.string :location
      t.integer :beer_id
      t.integer :user_id

      t.timestamps
    end
  end
end
