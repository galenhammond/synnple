class ContactMailer < ApplicationMailer
	default from: 'synnplevisuals@donotreply.com'
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.contact_request.subject
  #
  def contact_request(data, usr_name, phone_num, return_email)
    @message = message

    @body = data
    @name = usr_name
    @number = phone_num
    @email = return_email
    @main_email = 'galenhammond@live.ca'

    mail(to: 'galenhammond@live.ca', subject: 'Contact Request')
    #, :subject "Contact Request", :from => @message.email
  end
end
