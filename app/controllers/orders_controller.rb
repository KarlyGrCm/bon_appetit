class OrdersController < ApplicationController
	def create
		restaurant = Dish.find(params[:dish_id]).restaurant

		order = Order.where({user_id: current_user.id, restaurant_id: restaurant.id, status: false}).first
		if order
			DishOrder.create({order_id: order.id, dish_id: params[:dish_id]})
		else
			new_order = Order.create({
				user_id: current_user.id,
				restaurant_id: restaurant.id
			})
			DishOrder.create({order_id: new_order.id, dish_id: params[:dish_id]}	)
		end

		redirect_to "/restaurante/#{restaurant.id}"
	end	

	def checkout
		@order = Order.find(params[:id])
		@address = current_user.addresses.new
	end

	def add_address
		@order = Order.find(params[:order_id])

		@address = current_user.addresses.new(address_params)
		if @address.save
			redirect_to "/checkout/#{@order.id}"
		else
			render :checkout
		end
	end

	def finish
		order = Order.find(params[:order_id])
		order.update_attributes({status: true, address_id: params[:address_id]})

		redirect_to "/restaurante/#{order.restaurant.id}",  notice: "Tu pedido ha sido registrado"
	end

	private
	def address_params
		params.require(:address).permit(:street, :number, :city, :cp)
	end

end