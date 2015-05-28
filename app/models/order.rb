class Order < ActiveRecord::Base
	belongs_to :user
	belongs_to :address
	has_many :dishes, through: :dish_orders
	has_many :dish_orders
	
	belongs_to :restaurant
end