class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :desktop]

  def home
  end

  def desktop
  end
end
