# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/take_a_demand
  def take_a_demand
    @demand = Demand.find(24)
    UserMailer.with(demand: @demand).take_a_demand
  end

end
