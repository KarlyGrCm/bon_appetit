class AddAddressToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :address_id, :integer, index: true
  end
end
