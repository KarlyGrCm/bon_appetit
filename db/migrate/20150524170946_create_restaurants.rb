class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :rfc
      t.text :description
      t.integer :category_id, index: true

      t.timestamps null: false
    end
  end
end
