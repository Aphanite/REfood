class PaymentsController < ApplicationController
    def new
        @order = current_user.orders.where(status: 0).find(params[:order_id])
        @checkout_session_id = stripe_session["id"]
    end

    def stripe_session
        Stripe.api_key = 'sk_test_51JQqGpAmhtIuoFRVI8SamhN9tGEReWmkuSpfNuIxHr2yYReNwhIsxerGbd6IH512ujDK3q6BLQBtmNXFVfbCp9YN00g4DX2iKX'
        @stripe_session = Stripe::Checkout::Session.create(
          payment_method_types: ['card'],
          line_items: [{
            name: "Product",
            description: "Payment",
            amount: "1000",
            currency: 'eur',
            quantity: 1,
          }],
          mode: 'payment',
          success_url: "http://localhost:3000/",
          cancel_url: "http://localhost:3000/",
        )
        return @stripe_session
      end
end
