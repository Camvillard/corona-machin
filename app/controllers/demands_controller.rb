class DemandsController < ApplicationController
  before_action :find_demand, only: %i[show edit]

  def index
    @active = params[:query] ? params["query"] : "all"
    if params["query"] == "all" || params[:query].nil?
      @demands = Demand.all
    else
      @demands = Demand.where(need_type: params["query"])
    end
end

  def show
    if @demand.need_type === "ErrandDemand"
      @list = @demand.need.list
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
end
