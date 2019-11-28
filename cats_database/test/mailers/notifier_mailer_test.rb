require 'test_helper'

class NotifierMailerTest < ActionMailer::TestCase
  test "kittens" do
    mail = NotifierMailer.kittens
    assert_equal "Kittens", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
