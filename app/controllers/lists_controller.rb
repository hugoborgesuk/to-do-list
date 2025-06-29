class ListsController < ApplicationController
  def show
    @list = List.find(params[:id])
    @items = @list.items.find_by(id: params[:id])
  end

  def new
    @list = List.new
    5.times{@list.items.build}
    # items << @list.items.build
  end

  def create
    Rails.logger.debug "PARAMS => #{params.inspect}"
    @list = List.new(list_params)
    if @list.save
      redirect_to get_dones_path, notice: "Saved com sucesso !"
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
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy
    redirect_to get_dones_path, notice: 'List deleted !'
  end

  def status
    @list = List.find(params[:id])
      if @list.update(status: true)
        redirect_to get_dones_path, notice: 'List marked as complete !'
      else
        render :show, status: :unprocessable_entity
      end
  end

  private

  def list_params
    params.require(:list).permit(:title, items_attributes: [ :name, :id, :status, :_destroy ])
  end
end
