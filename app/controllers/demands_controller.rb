class DemandsController < ApplicationController
  before_action :find_demand, only: %i[show]
  
  def index
    @demands = Demand.all
  end

  def show
    if @demand.need_type === "ErrandDemand"
      @list = @demand.need.list
      @items = @list.items
    end
  end

  def success_page

  end

  private

    def find_demand
      @demand = Demand.find(params[:id])
    end
end
