class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :type_of_food
      t.string :address
      t.integer :rating
      t.timestamps
    end
  end
end
