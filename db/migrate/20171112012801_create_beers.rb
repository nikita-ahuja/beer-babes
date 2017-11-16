class CreateBeers < ActiveRecord::Migration[5.1]
  def change
    create_table :beers do |t|
      t.string :name
      t.string :beer_style
      t.string :city
      t.string :brewery
      t.string :image
      t.string :independent
      t.string :characteristic
     
     	t.timestamps
    end
  end
end
