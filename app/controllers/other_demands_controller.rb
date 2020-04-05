class OtherDemandsController < ApplicationController
  def new
    @other = OtherDemand.new
  end

  def create
    @other = OtherDemand.new()
    @need = create_generic_demand(@other)
    if !@other.save
      return
    else
      if @need.save
        redirect_to success_path(location: "demand")
      else
        return
      end
    end
  end
end
