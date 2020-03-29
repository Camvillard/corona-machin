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
    @need = create_generic_demand(@errand)
    convertItemsList(params["item"], @errand)
    if @need.save!
      redirect_to success_path(location: "demand")
    else
      render :new
    end
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
