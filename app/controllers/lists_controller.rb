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

  def edit
    @list = List.find(params[:id])
  end

  def update
    @list = List.find(params[:id])
    if @list.update(list_params)
      redirect_to @list, notice: "List updated !"
    else
      render :edit
    end
  end

  def destroy
    @list = List.find(params[:id])
    redirect_to get_dones_path, status: :see_other
  end

  private

  def list_params
    params.require(:list).permit(:title, :item)
  end
end
