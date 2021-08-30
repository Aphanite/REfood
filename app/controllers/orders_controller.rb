class OrdersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :new]
  
  # def index
  #   @orders = policy_scope(Order).order(created_at: :desc)
  # end

  # def show
  #   authorize @order
  #   @order = current_user.orders.find(params[:id])
  # end

  def new

  end
  
  def create
  end

  def confirm
  end

  private

  # def order_params
  #   params.require(:order).permit(:status, :amount, :date)
  # end
end
