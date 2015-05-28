class WelcomeController < ApplicationController
  def index
  	@categories = Category.all.limit(8)
  end

  def categories
  	if params[:id]
  		@restaurants = Category.find(params[:id],).restaurants 
  	else
  		@restaurants = Restaurant.all
  	end
  	@categories = Category.all
  end

  def restaurante
    @restaurant = Restaurant.find(params[:id])
    @order = current_user.orders.where({restaurant_id: @restaurant.id, status: false}).first
    if @order
      @dishes = @order.dishes
    end
  end

end