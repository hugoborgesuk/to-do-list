class ItemsController < ApplicationController
  def create
    @list = List.find(params[:list_id])

    @item = @list.item.build(item_params)

    if @item.save
      redirect_to list_path(@list), notice: 'Item added to the list !'
    else
      render 'lists/show', status: :unprocessable_entity
    end
  end

  private

  def items_params
    params.require(:item).permit(:name)
  end

end
