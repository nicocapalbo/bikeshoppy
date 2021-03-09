class OrdersController < ApplicationController
  def new
    @order = current_user.orders.new
    @bike = Bike.find(params[:bike])
    @order.bike = @bike
    @customization = Customization.new
  end

  def create
  end
end
