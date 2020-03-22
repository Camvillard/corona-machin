class DemandsController < ApplicationController
  def index
    @demands = Demand.all
  end
end
