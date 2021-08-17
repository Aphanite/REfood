class SupermarketsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @supermarkets = policy_scope(Supermarket).order(created_at: :desc)
  end

  def show
    @supermarket = Supermarket.find(params[:id])
    authorize @supermarket
  end
end
