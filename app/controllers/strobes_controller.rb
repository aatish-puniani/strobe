class StrobesController < ApplicationController
  def home
    @photographers = Photographer.all
    @assistants = Assistant.all
    CommunicationsHelper::Text.send_twilio
  end

  def send_text_message
    number_to_send_to = params[:number_to_send_to]

    twilio_sid = "sid"
    twilio_token = "token"
    twilio_phone_number = "3128185607"

    @twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token

    @twilio_client.account.sms.messages.create(
      :from => '+13128185607',
      :to => number_to_send_to,
      :body => "This is an message. It gets sent to #{number_to_send_to}"
    )
  end
end
