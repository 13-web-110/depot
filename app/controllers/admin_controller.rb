class AdminController < ApplicationController
  def index
    @total_orders = Order.count
    @cart = current_cart
  end
end