class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
    	t.string :username
      t.string :email,           null: false, default: ""
      t.string :password_digest, null: false, default: ""

      # beer quiz
      t.integer :light_rating
      t.integer :dark_rating
      t.integer :hoppy_rating

      t.timestamps
    end
    add_index :users, :email, unique: true
  end
end
