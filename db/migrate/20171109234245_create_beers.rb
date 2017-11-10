class CreateBeers < ActiveRecord::Migration[5.1]
  def change
    create_table :beers do |t|
    	t.string :name
    	t.string :api_id
    	t.boolean :independent

      t.timestamps
    end
  end
end


# find by id
# b.beers.find('vYlBZQ') --- id

# find by name
# b.beers.all(name: "Naughty 90").first