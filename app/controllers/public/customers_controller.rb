class Public::CustomersController < ApplicationController
  def show
    @customer = current_customer.find(params[:id])
  end

  def edit
  end

  def check
  end
end
