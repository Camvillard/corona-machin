class SocialDemandsController < ApplicationController
  def new
    @social = SocialDemand.new
  end

  def create
    @social = SocialDemand.create!(
      recurrence: params["recurrence"]
    )
    @need = create_generic_demand(@social)

    if @need.save!
      redirect_to success_path(location: "demand")
    else
      render :new
    end
  end
end
