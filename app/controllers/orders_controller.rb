class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
  end

  def create
    @order = Order.new(order_params)
    @order.save
  end

  private

  def order_params
    params.require(:order).permit(:status, :amount, :date)
  end
end
