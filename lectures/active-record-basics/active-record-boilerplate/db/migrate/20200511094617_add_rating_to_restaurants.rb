class AddRatingToRestaurants < ActiveRecord::Migration[5.1]
  def change
    add_column :restaurants, :rating, :integer, null: false, default: 0
  end
end
