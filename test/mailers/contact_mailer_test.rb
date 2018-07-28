require 'test_helper'

class ContactMailerTest < ActionMailer::TestCase
  test "contact_request" do

  	@message = Message.new 
  		name: "Anna"
  		email: "rob@jesus.com"
  		phone_number: '6138329023'
  		body: "lorem ejwiroe" 

  	


    mail = ContactMailer.contact_request(@message)

    assert_mails 1 do
    	mail.deliver_now
    end


    assert_equal "Contact request", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
