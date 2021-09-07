class OrdersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :new, :create]
  
  # def index
  #   @orders = policy_scope(Order).order(created_at: :desc)
  # end

  # def show
  #   authorize @order
  #   @order = current_user.orders.find(params[:id])
  # end

  def new
    @grouped_session = get_grouped_session
  end
  
  def create
    order = Order.new()
    # assign user (preliminary solution)
    current_user ? order.user = current_user : order.user = User.find_by(email: "ena@fake.com")

    # get supermarkets in cart
    supermarkets = get_supermarkets(get_grouped_session)
    # get pickup date and time for each supermarket
    date_params = order_params(supermarkets)

    # add pickup dates and times to order
    pickup_dates = {}
    supermarkets.each do |s|
      pickup_dates["#{s}"] = [ date_params["date-#{s}"], date_params["time-#{s}"] ]
    end
    order.pick_up_slots = pickup_dates

    prices = get_price_and_discount

    order.total_price = prices[:total_price]
    order.discount = prices[:discount]

    order.points = (order.total_price.to_i * 2).floor

    order.save!

    # make associated ordered items
    make_ordered_items(order)

    # empty cart in session
    session[:cart] = []

    redirect_to new_order_payment_path(order)
  end

  def confirm
  end

  private

  def order_params(supermarkets)
    supermarket_slots = []

    supermarkets.each do |s|
      supermarket_slots << "date-#{s}".to_sym
      supermarket_slots << "time-#{s}".to_sym
    end
    params.require(:order).permit(*supermarket_slots)

  end

  # group products in cart by supermarket
  def get_grouped_session
    session[:cart].group_by { |p| p["supermarketId"].itself }
  end

  def get_supermarkets(grouped_session)
    grouped_session.map do |group|
      Supermarket.find(group[0]).id
    end
  end

  def make_ordered_items(order)
    session[:cart].each do |item|
      item["offset"].times do
        OrderedItem.create!(order: order, product: Product.find(item["productId"]))
      end
    end
  end

  def get_price_and_discount
    total_price = 0
    discount = 0
    session[:cart].each do |item|
      product = Product.find(item["productId"])
      total_price += product.discounted_price * item["offset"]
      discount += (product.full_price - product.discounted_price) * item["offset"]
    end

    return {total_price: total_price, discount: discount}
  end
end
