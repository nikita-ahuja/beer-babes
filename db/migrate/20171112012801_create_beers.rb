class CreateBeers < ActiveRecord::Migration[5.1]
  def change
    create_table :beers do |t|
      t.string :name
      t.string :style
      t.string :city
      t.string :brewery
      t.string :image
      t.boolean :independent
      t.string :category
     
     	t.timestamps
    end
  end
end
