class CreateDishOrder < ActiveRecord::Migration
  def change
    create_table :dish_orders do |t|
    	t.float :price
    	t.belongs_to :order, index: true
      t.belongs_to :dish, index: true
    end
  end
end
