# Preview all emails at http://localhost:3000/rails/mailers/example_mailer
class ExampleMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/example_mailer/sample_email
  def sample_email
    ExampleMailer.sample_email
  end

end
