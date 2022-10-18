class Public::AddressesController < ApplicationController
  def index
    @address = Address.new
    @addresses = current_address.all
  end

  def create
    @address = Address.new(address_params)
    address.save
    redirect_to addresses_path
  end

  def edit
    @address = Address.find(params[:id])
  end

  def update
    address = Address.find(params[:id])
    address.update
    redirect_to addresses_path(address.id)
  end

  def destroy
    @address = Address.find(params[:id])
    @address.destroy
    redirect_to addresses_path
  end

  private

  def address_params
    params.require(:address).permit(:postal_code, :address, :name)
  end

end
