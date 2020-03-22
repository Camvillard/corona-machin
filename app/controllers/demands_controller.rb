class DemandsController < ApplicationController
  before_action :find_demand, only: %i[show]
  
  def index
    @demands = Demand.all
  end

  def show
  end

  private

    def find_demand
      @demand = Demand.find(params[:id])
    end
end
