class Dish < ActiveRecord::Base
	belongs_to :restaurant
	validates_presence_of :name, :price, :description, :image, message: 'Este campo es requerido'
	mount_uploader :image, ImageUploader
end
