class CartsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:adjust_cart, :show, :empty_cart, :change_cart_count]

  def adjust_cart
    init_cart
    unless product_already_in_cart?
      session[:cart] << params[:cart]
    end

    # p current_user
    render json: {
      cart: session[:cart],
      product: Product.find(params[:cart]["productId"]).name,
      supermarket: Supermarket.find(params[:cart]["supermarketId"]).name,
      amount: params[:cart]["offset"]
    }
  end

  def show
    @cart = session[:cart]
  end

  def empty_cart
    session[:cart] = []
  end

  def change_cart_count
    product_id = params[:cart]["productId"]
    cart_item = session[:cart].find do |i|
      i["productId"] == product_id
    end
    cart_item["offset"] = params[:cart]["newCount"]
    # puts cart_item
    # puts session[:cart]
    render json: { success: true, count: cart_item["offset"] }
  end

  private

  def init_cart
    unless session[:cart]
      session[:cart] = []
    end
  end

  def product_already_in_cart?
    session[:cart].each do |product|
      # if yes, update count of exisiting product and return true
      if product["productId"] == params[:cart]["productId"]
        puts "entered if clause"
        product["offset"] += params[:cart]["offset"]
        return true
      end
    end
    # if not, you will end up here and return false
    return false
  end

end
