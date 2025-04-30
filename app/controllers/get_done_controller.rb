class GetDoneController < ApplicationController
  def index
    @lists = List.all
  end
end
