class OrdersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :confirm]
  
  def index
    @orders = policy_scope(Order).order(created_at: :desc)
  end

  def show
    authorize @order
    @order = current_user.orders.find(params[:id])
  end

  def new
    @order = Order.new
    authorize @order
  end
  
  def create
    @product = Product.find(params[:product_id])
    @order = Order.new(order_params)
    @order.user = current_user
    @order.save
    authorize @order
  end

  def update
    @order = Order.find(params[:id])
    @order.update(order_params)

    redirect_to order_path(@order)
  end

  def confirm
  end

  private

  def order_params
    params.require(:order).permit(:status, :amount, :date)
  end
end
