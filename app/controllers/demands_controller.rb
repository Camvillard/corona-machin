class DemandsController < ApplicationController
  before_action :find_demand, only: %i[show]

  def index
    @demands = Demand.all
  end

  def show
    Demand.find(20).need_type === "ErrandDemand"
    if @demand.need_type === "ErrandDemand"
      @list = find_list(@demand)
      @items = @list.items
    end
  end

  def success_page
  end

  def edit
  end

  def update

  end

  private

  def find_demand
    @demand = Demand.find(params[:id])
  end

  def find_list(demand)
    Demand
      .find(demand.id)
      .need
      .list
  end
end
