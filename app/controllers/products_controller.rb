class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @products = policy_scope(Product).order(created_at: :desc)
  end

  def show
    @product = Product.find(params[:id])
    authorize @product
  end

end
