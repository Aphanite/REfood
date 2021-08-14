class SupermarketsController < ApplicationController
  def index
    @supermarkets = Supermarket.all
  end

  def show
    @supermarket = Supermarket.find(params[:id])
  end
end
