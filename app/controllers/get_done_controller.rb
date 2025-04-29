class GetDoneController < ApplicationController
  def index
    @lists = List.all
  end

  def list
  end
end
