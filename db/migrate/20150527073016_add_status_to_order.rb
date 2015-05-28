class AddStatusToOrder < ActiveRecord::Migration
  def change
  	add_column :orders, :status, :boolean, default: false	
  	add_column :orders, :deliver, :boolean, default: false
  end
end
