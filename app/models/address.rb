class Address < ActiveRecord::Base
	belongs_to :user
	has_many :orders

	validates_presence_of :street, :number, :city, :cp
end