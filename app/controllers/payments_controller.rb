class PaymentsController < ApplicationController
    def new
        @order = current_user.orders.where(status: 0).find(params[:order_id])
    end
end
