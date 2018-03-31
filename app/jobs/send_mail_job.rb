class SendMailJob < ApplicationJob
  queue_as :mailers

  def perform(user)
  	@user=user
    ExampleMailer.sample_email(@user).deliver!
  end
end
