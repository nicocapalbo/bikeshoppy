class OrdersController < ApplicationController
  def show
    @order = Order.find(params[:id])
  end

  def new
    @order = Order.new
    authorize @order
    @bike = Bike.find(params[:bike_id])
    @customization = Customization.new
  end

  def create
    @order = current_user.orders.new(order_params)
    authorize @order
    if @order.save
      prms = JSON.parse(option_params.to_json)
      prms.each_value { |value| Customization.create!(order: @order, option_id: value.to_i) }
      @order.update(total: @order.bike.price + @order.order_total)
      redirect_to order_path(@order)
    else
      render new
    end
  end

  private

  def order_params
    params.require(:order).permit(:bike_id)
  end

  def option_params
    params.require(:options)
  end
end
