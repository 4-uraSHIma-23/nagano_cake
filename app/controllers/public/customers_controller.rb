class Public::CustomersController < ApplicationController
  def show
    @customer = current_customer.find(params[:id])
  end

  def edit
    @customer = current_customer.find(params[:id])
  end

  def check
  end

  private

  def customer_params
    params_require(:customer).permit(:id, :last_name, :first_name, :last_name_kana, :first_name_kana, :email, :postal_code, :address, :encrypted_password, :encrypted_password_confirmation)
  end
end
