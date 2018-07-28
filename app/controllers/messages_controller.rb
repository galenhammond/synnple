class MessagesController < ApplicationController

def new
    @message = Message.new
end

def create

    @message = Message.new(message_params)

    data = params[:body]
    usr_name = params[:name]
    return_email = params[:email]
    phone_num = params[:phone_number]

	if verify_recaptcha(model: @message) && @message.valid?
      ContactMailer.contact_request(data, usr_name, phone_num, return_email).deliver_now
      redirect_to root_path
      flash[:notice] = "We have received your message and will be in touch soon!"
    else
      flash[:notice] = "There was an error sending your message. Please try again."
      redirect_to messages_path
    end

end

private

def message_params
    params.require(:message).permit(:name, :email, :phone_number, :body)
end

end
