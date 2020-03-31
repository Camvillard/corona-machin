class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.take_a_demand.subject
  #
  def take_a_demand
    @need =  "s"

    mail to: "to@example.org"
  end
end
