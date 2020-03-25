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
    @errand.update(list: List.new)
    @need = Demand.new(
      title: params["title"],
      name: params["name"],
      phone: params["phone"],
      email: params["email"],
      status: "pending",
      message: params["message"],
      need: @errand,
    )
    convertItemsList(params["item"], @errand)
    raise
  end

  private

  def convertItemsList(list, errand)
    items = list.split(",")
    items.each do |item|
      splitted = item.split("-")
      new_item = Item.create!(
        name: splitted[0],
        detail: splitted[1],
        list: errand.list
      )
      errand.list.items.push(new_item)
    end
  end


end
