class Restaurant < ActiveRecord::Base
	belongs_to :category
	has_many :dishes
	validates_presence_of :name, :phone, :address, :rfc, :description, :category_id, message: 'El campo es requerido'
end
