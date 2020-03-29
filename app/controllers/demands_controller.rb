class DemandsController < ApplicationController
  before_action :find_demand, only: %i(edit)
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
