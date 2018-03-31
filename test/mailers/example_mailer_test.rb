require 'test_helper'

class ExampleMailerTest < ActionMailer::TestCase
  test "sample_email" do
    mail = ExampleMailer.sample_email
    assert_equal "Sample email", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
