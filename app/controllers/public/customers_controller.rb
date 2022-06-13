class Public::CustomersController < ApplicationController
  def show
    @customer = current_customer.find(params[:id])
  end

  def edit
    @customer = current_customer.find(params[:id])
  end

  def update
    @customer = current_customer.find(params[:id])
    @customer.update(customer_params)
    redirect_to customer_path
  end

  def check
  end

  def withdrawal
    @customer = current_customer.find(params[:id])
    @customer.update(is_active: false)
    reset_session
    flash[:notice] = "退会処理を実行いたしました"
    redirect_to root_path
  end

  private

  def customer_params
    params_require(:customer).permit(:id, :last_name, :first_name, :last_name_kana, :first_name_kana, :postal_code, :address, :email)
  end
end
