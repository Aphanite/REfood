class OrdersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  
  def index
    @orders = policy_scope(Order).order(created_at: :desc)
  end

  def show
    authorize @order
    @order = current_user.orders.find(params[:id])
  end

  def new
    @product = Product.find(params[:garden_id])
    @order = Order.new
    authorize @order
  end
  
  def create
    @product = Product.find(params[:product_id])
    @order = Order.new(order_params)
    @order.user = current_user
    @order.save
    authorize @order

    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
        name: product.id,
        amount: product.discounted_price_cents,
        currency: 'eur',
      }],
      success_url: order_url(order),
      cancel_url: order_url(order)
    )
  
    order.update(checkout_session_id: session.id)
    redirect_to new_order_payment_path(order)
  end

  def update
    @order = Order.find(params[:id])
    @order.update(order_params)

    redirect_to order_path(@order)
  end

  private

  def order_params
    params.require(:order).permit(:status, :amount, :date)
  end
end
