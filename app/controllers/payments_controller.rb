class PaymentsController < ApplicationController
  def new
    @order = current_user.orders.where(status: 0).find(params[:order_id])
    @checkout_session_id = stripe_session["id"]
  end

  def stripe_session
    Stripe.api_key = ENV['STRIPE_SECRET_KEY']
    @stripe_session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
        name: "Total Amount",
        description: "Payment",
        amount: @order.total_price_cents,
        currency: 'eur',
        quantity: 1,
      }],
      mode: 'payment',
      success_url: "http://www.re-food.me/confirm",
      cancel_url: "http://www.re-food.me/",
    )
    return @stripe_session
  end
end
