class PaymentsController < ApplicationController
  def new
    @order = current_user.orders.where(status: 0).find(params[:order_id])
    @checkout_session_id = stripe_session["id"]
  end

  def stripe_session
    Stripe.api_key = ENV['STRIPE_SECRET_KEY']
    # order = Order.find(params[:order_id])
    @stripe_session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
        name: "Product",
        description: "Payment",
        amount: @order.total_price_cents,
        currency: 'eur',
        quantity: 1,
      }],
      mode: 'payment',
      success_url: "http://localhost:3000/",
      cancel_url: "http://localhost:3000/",
    )
    return @stripe_session
  end

  # private

  # def payment_params
  #   params.require(:payment).permit(:order)
  # end
end
