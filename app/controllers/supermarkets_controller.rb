class SupermarketsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
     if params[:query].present?
      @supermarkets = policy_scope(Supermarket).search_by_address(params[:query])
    else
      @supermarkets = policy_scope(Supermarket).order(name: :desc)
    end

    # geolocation markers
     @markers = @supermarkets.map do |supermarket|
      {
        lat: supermarket.latitude,
        lng: supermarket.longitude,
      }
    end
  end

  def show
    @supermarket = Supermarket.find(params[:id])
    authorize @supermarket
  end
end
