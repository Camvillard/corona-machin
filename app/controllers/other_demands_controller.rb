class OtherDemandsController < ApplicationController
  def new
    @other = OtherDemand.new
  end

  def create
    @other = OtherDemand.create!()
    @need = create_generic_demand(@other)

    if @need.save!
      redirect_to success_path(location: "demand")
    else
      render :new
    end
  end
end
