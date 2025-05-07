class GetDonesController < ApplicationController
  def index
    @lists = List.all
  end
end
