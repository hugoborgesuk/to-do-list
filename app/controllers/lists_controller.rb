class ListsController < ApplicationController
  def show
    @list = List.find(params[:id])
    @item = @list.item
  end


  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to get_dones_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def list_params
    params.require(:list).permit(:title, :item)
  end
end
