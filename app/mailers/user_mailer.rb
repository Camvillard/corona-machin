class UserMailer < ApplicationMailer

  def take_a_demand
    @demand = params[:demand]
    mail to: @demand.taker_email
  end
end
