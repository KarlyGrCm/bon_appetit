class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :name
      t.integer :restaurant_id, index: true
      t.string :description
      t.float :price

      t.timestamps null: false
    end
  end
end
