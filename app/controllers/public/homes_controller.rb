class Public::HomesController < ApplicationController

  def top
    @items = Item.page(page: params[:page]).reverse_order.per(4)
  end

  def about
  end

end
