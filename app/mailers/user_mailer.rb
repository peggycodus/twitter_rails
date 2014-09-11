class UserMailer < ActionMailer::Base
  default from: "peggyc3@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.mention_notice.subject
  #
  def mention_notice(user)
   
    @user = user
    mail to: user.email, subject: "You've been Mentioned in a post!"
  end
end
