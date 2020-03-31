require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "take_a_demand" do
    mail = UserMailer.take_a_demand
    assert_equal "Take a demand", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
