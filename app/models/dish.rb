class Dish < ActiveRecord::Base
	belongs_to :restaurant

	has_many :orders, through: :dish_orders
	has_many :dish_orders
	
	validates_presence_of :name, :price, :description, :image, message: 'Este campo es requerido'
	mount_uploader :image, ImageUploader
end
