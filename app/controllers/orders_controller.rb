class OrdersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  
  def index
    @orders = policy_scope(Order).order(created_at: :desc)
  end

  def show
    @order = Order.find(params[:id])
    authorize @order
  end

  def create
    @order = Order.new(order_params)
    @order.save
    authorize @order
  end

  private

  def order_params
    params.require(:order).permit(:status, :amount, :date)
  end
end
