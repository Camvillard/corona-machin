class DemandsController < ApplicationController
  before_action :find_demand, only: %i[show]
  
  def index
    @demands = Demand.all
  end

  def show
    # find list
    # List.where(errand_demand_id: 20)

    # Find associated items
    # Item.where(list_id: 1)

  end

  private

    def find_demand
      @demand = Demand.find(params[:id])
    end

    # def find_list(errand_demand_id)
    #   List.where(errand_demand_id: errand_demand_id)
    # end

  def success_page

  end
end
