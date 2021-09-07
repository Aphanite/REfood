class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @products = policy_scope(Product).order(created_at: :desc)
  end

  def show
    @product = Product.find(params[:id])
    if session[:cart]
      @cart_count = 0
      session[:cart].each do |el|
        @cart_count += el["offset"]
      end
    end
  end

end
