class PaymentsController < ApplicationController
  def new
    @order = current_user.orders.where(status: 0).find(params[:order_id])
    # retrieve new Hash with products grouped by supermarkets
    products_by_supermarket = @order.products.group_by { |el| el.supermarket.itself }
    @sorted_products = {}
    # count product duplicates within one supermarket
    products_by_supermarket.each do |group|
      # Array with length of unique products
      # made up of Arrays storing product instance first, i.e. [0], and count second, i.e. [1]
      supermarket_array = group[1].group_by { |i| i }.map { |k,v| [k, v.count]}
      # supermarket instance as key + Array of Arrays as value
      @sorted_products[group[0]] = supermarket_array
    end

    @checkout_session_id = stripe_session["id"]
  end

  private

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
