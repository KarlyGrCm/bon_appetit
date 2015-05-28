class Restaurant < ActiveRecord::Base
	belongs_to :category
	has_many :dishes
	has_many :orders
	has_one :user
	validates_presence_of :name, :phone, :address, :rfc, :description, :image, :category_id, message: 'El campo es requerido'
	mount_uploader :image, ImageUploader

	def notification
		orders.where({deliver: false}).count
	end
end
