class ErrandDemandsController < ApplicationController
  def new
    @errand = ErrandDemand.new
    @need = Demand.new
    @list = List.new
    @item = Item.new
  end

  def create
    @errand = ErrandDemand.create!(
      address: params[:address]
    )
    @need = Demand.new(
      title: params["title"],
      name: params["name"],
      phone: params["phone"],
      email: params["email"],
      status: "pending",
      message: params["message"],
      need: @errand,
    )
    raise
  end


end
