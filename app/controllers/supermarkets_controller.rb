class SupermarketsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
     if params[:query].present?
      @supermarkets = policy_scope(Supermarket).search_by_address(params[:query])
     else
      @supermarkets = policy_scope(Supermarket).order(name: :desc)
     end
    # geolocation markers
     @markers = @supermarkets.geocoded.map do |supermarket|
      {
        lat: supermarket.latitude,
        lng: supermarket.longitude,
        info_window: { content: render_to_string(partial: "/supermarkets/info_window", locals: { supermarket: supermarket }) }
      }
     end

    if session[:cart]
      @cart_count = session[:cart].count
    end
  end

  def show
    @category_list = [
      { slug: "all", text: "All" },
      { slug: "fruits", text: "Fruit" },
      { slug: "vegetables", text: "Vegetables" },
      { slug: "meat-fish", text: "Meat/Fish" },
      { slug: "dairy", text: "Dairy" }
    ]

    @supermarket = Supermarket.find(params[:id])
    @products = @supermarket.products


    @category = params.fetch("category", "all")

    # unless @category == 'all'
    #   @products = @products.where(category: @category)
    # end

    if @category == 'all'
      el = @category_list.find {|i| i[:slug] == "all"}
      el[:text] = "All (#{@products.count})"
    else
      @products = @products.where(category: @category)
      el = @category_list.find {|i| i[:slug] == @category}
      if @category == "meat-fish"
        el[:text] = "Meat/Fish (#{@products.count})"
      else
        el[:text] = "#{@category.capitalize} (#{@products.count})"
      end
    end

    if session[:cart]
     @cart_count = session[:cart].count
    end
  end
end
