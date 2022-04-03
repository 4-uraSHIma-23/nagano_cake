class Admin::OrdersController < ApplicationController
  def show
    @order = Order.find(params[:id])
    @detail = Order_detail.find(params[:id])
    @cart_items = current_customer.cart_items.all
    @total = @cart_items.inject(0) { |sum, item| sum + item.subtotal }
  end
end
