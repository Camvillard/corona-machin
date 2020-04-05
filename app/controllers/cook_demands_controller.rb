class CookDemandsController < ApplicationController
  def new
    @cook = CookDemand.new
    @need = Demand.new
  end

  def create
    @cook = CookDemand.new(
      address: params["address"],
      recurrence: params["recurrence"]
    )
    if !@cook.save
      return
    else
      @need = create_generic_demand(@cook)
      if @need.save
        redirect_to success_path(location: "demand")
      else
        return
      end
    end
  end
end
