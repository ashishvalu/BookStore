class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def new
  end

  def show
  end
end
