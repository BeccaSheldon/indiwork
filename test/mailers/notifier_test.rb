require 'test_helper'

class NotifierTest < ActionMailer::TestCase
  test "subscription_notification" do
    mail = Notifier.subscription_notification
    assert_equal "Subscription notification", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
