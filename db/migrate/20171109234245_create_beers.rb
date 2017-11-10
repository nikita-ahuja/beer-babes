class CreateBeers < ActiveRecord::Migration[5.1]
  def change
    create_table :beers do |t|
    	t.string :name
    	t.integer :api_id
    	t.boolean :independent

      t.timestamps
    end
  end
end
