class ErrandDemandsController < ApplicationController
  def new
    @errand = ErrandDemand.new
    @need = Demand.new
    @list = List.new
  end

  def create
    raise
  end


end
