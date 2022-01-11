class Admin::GenresController < ApplicationController
  def index
    @list = List.new
    @lists = List.all
  end

  def create
    list = List.new(list_params)
    list.save
    redirect_to '/admin/genres'
  end

  def edit
  end

  private

  def list_params
    params.require(:genre).permit(:name)
  end

end
