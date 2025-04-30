class ListController < ApplicationController
  def new
    @list = List.new
  end

  def create
    @list = List.new(params[:list])
    @list.save
    redirect_to get_done_path(@list), status: :see_other
    # else
    #   render :new, status: :unprocessable_entity
    # end
  end

  private

  def list_params
    params.require(:list).permit(:title, :item)
  end
end
