class Dish < ActiveRecord::Base
	belongs_to :restaurant
	validates_presence_of :name, :price, :description , message: 'Este campo es requerido'
end
