class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :species
      t.string :gender
      t.date :rescued_at
      # t.boolean :adopted, null: false, default: false

      t.timestamps
    end
  end
end
