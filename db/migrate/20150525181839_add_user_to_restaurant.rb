class AddUserToRestaurant < ActiveRecord::Migration
  def change
  	add_column :restaurants, :user_id, :integer, index: true
  end
end
