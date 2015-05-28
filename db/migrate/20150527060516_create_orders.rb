class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
    	t.integer :user_id, index: true
    	t.float :total
    	t.integer :restaurant_id, index: true
    end
  end
end
