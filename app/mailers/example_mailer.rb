class ExampleMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.example_mailer.sample_email.subject
  #
  def sample_email(user)
    @user = user
    mail(to: @user.email, subject: 'using sneakers')
  end
end
