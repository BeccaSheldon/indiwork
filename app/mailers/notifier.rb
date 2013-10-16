class Notifier < ActionMailer::Base
  default from: "mkrsquare@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.subscription_notification.subject
  #
  def subscription_confirmation
    @greeting = "Hi"

    mail(to: "other-self <rebecca.e.sheldon@gmail.com>", subject: "Test")
  end
end
